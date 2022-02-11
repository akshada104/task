import 'package:get/get.dart';
import 'package:task/app/app.dart';

/// The splash controller which will be used to control the [SplashView].
class SplashController extends GetxController {
  /// [_splashPresenter] : The presenter which will be used by controller to
  /// get data from the other layer, rather than talking directly.
  SplashController(this._splashPresenter);

  final SplashPresenter _splashPresenter;

  @override
  void onInit() {
    _splashPresenter.toString();
    super.onInit();
  }
}
