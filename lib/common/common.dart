import 'dart:io';

import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:url_launcher/url_launcher.dart' as url_launcher;

const EMAIL_PATTERN =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

final DateFormat serverDateTimeFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
final DateFormat serverDateFormat = DateFormat("yyyy-MM-dd");
final DateFormat serverTimeFormat = DateFormat("HH:mm:ss");

Future<String> tempDirectory() async {
  final directory = await path_provider.getTemporaryDirectory();
  final _localPath = directory.path;
  final dirToSave = Directory(_localPath);
  bool hasExisted = await dirToSave.exists();
  if (!hasExisted) dirToSave.create();
  return dirToSave.path;
}

Future<String> downloadDirectory() async {
  final directory = Platform.isAndroid
      ? await path_provider.getExternalStorageDirectory()
      : await path_provider.getApplicationDocumentsDirectory();
  final _localPath = directory!.path;
  final dirToSave = Directory(_localPath);
  bool hasExisted = await dirToSave.exists();
  if (!hasExisted) dirToSave.create();
  return dirToSave.path;
}

Future<bool> launchUrl(String url) async {
  var canLaunch = await url_launcher.canLaunch(url);
  if (canLaunch) url_launcher.launch(url);
  return canLaunch;
}
