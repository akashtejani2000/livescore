import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityUtils {
  bool hasInternet = true;
  StreamSubscription? _subscription;
  StreamController<bool> onConnectivityChanged = StreamController.broadcast();

  static final instance = ConnectivityUtils._();

  ConnectivityUtils._();

  void init() {
    Connectivity().checkConnectivity().then(_onConnectivityChange);
    _subscription =
        Connectivity().onConnectivityChanged.listen(_onConnectivityChange);
  }

  void _onConnectivityChange(ConnectivityResult result) {
    hasInternet = result != ConnectivityResult.none;
    this.onConnectivityChanged.add(hasInternet);
  }

  void dispose() {
    _subscription?.cancel();
    onConnectivityChanged.close();
  }
}
