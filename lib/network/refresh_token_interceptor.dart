/*
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:prime_pay_wallet/model/model.dart';
import 'package:prime_pay_wallet/network/api_client.dart';
import 'package:prime_pay_wallet/network/api_urls.dart';
import 'package:prime_pay_wallet/pref/app_pref.dart';
import 'package:prime_pay_wallet/utils/app_logger.dart';

import 'encryption.dart';

class RefreshTokenInterceptor extends InterceptorsWrapper {
  Dio previous;
  Dio refreshDio = Dio();

  RefreshTokenInterceptor(this.previous);override

  @override
  void onError(DioError error, ErrorInterceptorHandler handler) async {
    if (error.response?.statusCode == 401) {
      if (ApiClient.doWriteLog)
        AppLogger.log("DIOERROR :: ${error.requestOptions.method} -> ${error.requestOptions.uri} -> ${error.message}");
      previous.lock();
      previous.interceptors.responseLock.lock();
      previous.interceptors.errorLock.lock();
      try {
        var headers = {
          "Refreshtoken": AppPref.refreshToken,
          "Content-Type": "application/json",
          "Accept": 'application/json',
        };

        if (ApiClient.doWriteLog) {
          AppLogger.log("REFRESHTOKEN REQUEST :: GET -> ${ApiUrl.refreshTokenUrl}");
          AppLogger.log("REFRESHTOKEN HEADERS ::");
          headers.forEach((key, value) => AppLogger.log("$key: $value"));
        }
        Response responseRefresh = await refreshDio.get(ApiUrl.refreshTokenUrl, options: Options(headers: headers));
        if (ApiClient.doWriteLog) {
          AppLogger.log(
              "REFRESHTOKEN RESPONSE :: ${responseRefresh.requestOptions.method} -> ${responseRefresh.requestOptions.uri}");
          AppLogger.log("REFRESHTOKEN DATA :: ${responseRefresh.data}");
        }

        var encryptResp = EncryptData.fromJson(responseRefresh.data);
        var decrypted = Encryption.instance.decryption(encryptResp);
        var decryptedData = jsonDecode(decrypted);
        AppPref.userToken = decryptedData["access_token"];
        AppPref.refreshToken = decryptedData["refresh_token"];

        previous.unlock();
        previous.interceptors.responseLock.unlock();
        previous.interceptors.errorLock.unlock();

        var previousData = error.requestOptions.data;
        if (previousData is Map<String, dynamic>) {
          previousData = Encryption.instance.decryptionMobileSide(EncryptData.fromJson(previousData));
          previousData = jsonDecode(previousData);
        }

        var options =
            Options(method: error.requestOptions.method, headers: {"Authorization": "Bearer " + AppPref.userToken})
                .compose(
                  previous.options,
                  error.requestOptions.path,
                  queryParameters: error.requestOptions.queryParameters,
                  data: previousData,
                )
                .copyWith(baseUrl: error.requestOptions.baseUrl);

        var resp = await previous.fetch(options);
        handler.resolve(resp);
      } on DioError catch (dioError) {
        if (ApiClient.doWriteLog) {
          AppLogger.log("REFRESHTOKEN DIOERROR :: ${dioError.requestOptions.method} -> ${dioError.requestOptions.uri}");
          AppLogger.log("REFRESHTOKEN DIOERROR :: ${dioError.type} -> ${dioError.message} -> ${dioError.response}");
        }
        handler.next(dioError);
        previous.unlock();
        previous.interceptors.responseLock.unlock();
        previous.interceptors.errorLock.unlock();
      } catch (e) {
        AppLogger.log(e);
        handler.next(error);
        previous.unlock();
        previous.interceptors.responseLock.unlock();
        previous.interceptors.errorLock.unlock();
      }
    } else {
      handler.next(error);
    }
  }
}
*/
