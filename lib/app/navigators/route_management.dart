import 'package:get/get.dart';
import 'package:task/app/app.dart';

/// A chunk of routes taken in the application.
abstract class RouteManagement {
  /// Go to the splash screen.
  static void goToSplash() {
    Get.offNamed<void>(
      Routes.splashScreen,
    );
  }
}
