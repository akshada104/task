import 'package:get/get.dart';
import 'package:task/app/app.dart';

/// A list of bindings which will be used in the route of [SplashView].
class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(
        Get.put(
          SplashPresenter(),
        ),
      ),
    );
  }
}
