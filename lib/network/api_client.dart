import 'dart:async';

import 'package:dio/dio.dart';
import 'package:live_score/network/api_urls.dart';
import 'package:live_score/utils/app_logger.dart';
import 'package:live_score/utils/common_utils.dart';
import 'package:live_score/utils/connectivity_utils.dart';
import 'package:live_score/widgets/loading_dialog.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  static late ApiClient _instance;
  static late Dio dio;
  static const bool doWriteLog = true;

  static ApiClient get instance => _instance;

  factory ApiClient._private(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(ApiUrl.recent, autoCastResponse: true)
  Future<String> matchIrecent();

  static Future<void> init(String baseUrl) async {
    var options = BaseOptions(
        connectTimeout: 30000,
        receiveTimeout: 60000,
        sendTimeout: 60000,
        headers: {
          "Content-Type": "application/json",
          "Accept": 'application/json',
        });
    dio = Dio(options);
    dio.interceptors.add(InterceptorsWrapper(onRequest: onRequest));
    dio.interceptors
        .add(InterceptorsWrapper(onResponse: onResponse, onError: onError));

    _instance = ApiClient._private(dio, baseUrl: baseUrl);
  }

  static Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (!ConnectivityUtils.instance.hasInternet) {
      CommonUtils.showNoInternetDialog();
      return handler.reject(
        DioError(
            requestOptions: options,
            type: DioErrorType.cancel,
            error: "No Internet"),
      );
    }

    /*if (AppPref.isLogin)
      options.headers["Authorization"] = "Bearer " + AppPref.userToken;
    else
      options.headers["VerifyToken"] = AppPref.userToken;
    if (doWriteLog) {
      AppLogger.log("REQUEST :: ${options.method} -> ${options.uri} -> ${options.data}");
      AppLogger.log("HEADERS ::");
      options.headers.forEach((key, value) => AppLogger.log("$key: $value"));
    }
    if (options.data is Map<String, dynamic>) {
      var encrypted = Encryption.instance.encryption(jsonEncode(options.data));
      options.data = encrypted.toJson();
      if (doWriteLog) AppLogger.log("ENCRYPTED DATA :: ${options.data}");
    }*/
    handler.next(options);
  }

  static Future<void> onError(
      DioError error, ErrorInterceptorHandler handler) async {
    if (doWriteLog) {
      AppLogger.log(
          "DIOERROR :: ${error.requestOptions.method} -> ${error.requestOptions.uri}");
      AppLogger.log(
          "DIOERROR :: ${error.type} -> ${error.message} -> ${error.response}");
    }
    handler.next(error);
  }

  static Future<void> onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    if (doWriteLog) {
      AppLogger.log(
          "RESPONSE :: ${response.requestOptions.method} -> ${response.requestOptions.uri}");
      AppLogger.log("DATA :: ${response.data}");
    }
    /*var encryptResp = EncryptData.fromJson(response.data);
    var decrypted = Encryption.instance.decryption(encryptResp);
    var decryptedData = jsonDecode(decrypted);
    response.data = decryptedData;
    if (doWriteLog) AppLogger.log("DECRYPTED DATA :: ${response.data}");*/
    handler.next(response);
    return response.data;
  }
}

int _noOfApiCalls = 0;

Future<T?> callApi<T>(Future<T> request, {bool doShowLoader = true}) async {
  try {
    if (doShowLoader) _showLoader();
    var response = await request;
    if (doShowLoader) _hideLoader();
    return response;
  } on DioError catch (error) {
    if (doShowLoader) _hideLoader();
    switch (error.type) {
      case DioErrorType.connectTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        break;
      case DioErrorType.response:
        onHttpError(error);
        break;
      case DioErrorType.cancel:
      case DioErrorType.other:
        break;
    }
  } catch (error) {
    if (doShowLoader) _hideLoader();
    AppLogger.log("CALLAPI :: $error");
  }
  return null;
}

void _showLoader() {
  if (_noOfApiCalls == 0) LoadingDialog.instance.show();
  _noOfApiCalls++;
}

void _hideLoader() {
  _noOfApiCalls--;
  if (_noOfApiCalls == 0) LoadingDialog.instance.dismiss();
}

void onHttpError(DioError error) {
  final json = error.response?.data;
  switch (error.response?.statusCode) {
    case 500: // ServerError
    case 400: // BadRequest
    case 403: // Unauthorized
    case 404: // NotFound
    case 409: // Conflict
    case 423: // Blocked
    case 402: // Payment required
      CommonUtils.showErrorDialog(json['message']);
      break;
    case 422: // InValidateData
      if (json['errors'] == null) {
        if (json['message'] != null)
          CommonUtils.showErrorDialog(json['message']);
      } else {
        String errors = "";
        (json['errors'] as Map<String, dynamic>).forEach((k, v) {
          errors += "• $v\n";
        });
        CommonUtils.showErrorDialog(errors);
      }
      break;
    case 401: // Unauthenticated
      ApiClient.dio.clear();
      break;
    case 426: // ForceUpdate
      break;
    case 524: // ServerTimeout
    case 521: // Web server is down debugPrint
    default:
    // CommonUtils.showErrorDialog(S.current.something_went_wrong);
  }
}
