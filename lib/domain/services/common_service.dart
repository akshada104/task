import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:get/get.dart';

/// A service which will be used to handle the basic
/// operations in the application. This will be used to separate the UI related
/// work like controllers, permission and etc.
class CommonService extends GetxService {
  /// This is used for internet change listener
  StreamSubscription? _streamSubscription;

  /// Call the initial methods when the service is initialized
  Future<CommonService> init() async {
    onInit();
    return this;
  }

  @override
  void onInit() {
    _checkForInternetConnectivity();
    super.onInit();
  }

  @override
  void onClose() {
    _streamSubscription?.cancel();
    super.onClose();
  }

  /// Starts the check for internet connectivity. If there is no connection
  /// with the internet a text message will be shown. If the application
  /// is not able to connect to the internet even if the connection is available
  /// will ask the user to check the internet permission.
  void _checkForInternetConnectivity() {
    _streamSubscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) async {
      if (result != ConnectivityResult.none) {
       print('yes');
      } else {
        print('internet issue');
      }
    });
  }
}
