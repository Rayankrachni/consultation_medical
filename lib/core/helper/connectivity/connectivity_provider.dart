import 'package:flutter/foundation.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityProvider extends ChangeNotifier {
  late ConnectivityResult _connectivityResult;
  ConnectivityResult get connectivityResult => _connectivityResult;

  ConnectivityProvider() {
    _initializeConnectivity();
    Connectivity().onConnectivityChanged.listen((result) {
      _connectivityResult = result;
      notifyListeners();
    });
  }

  Future<void> _initializeConnectivity() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    _connectivityResult = connectivityResult;
  }
}
