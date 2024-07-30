import 'package:bips_app/app/modules/profile/controllers/profile_controller.dart';
import 'package:bips_app/app/modules/splash/controllers/splash_controller.dart';
import 'package:get/get.dart';

class Allbinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut<SplashController>(() => SplashController(), fenix: true);
   Get.lazyPut<ProfileController>(() => ProfileController(), fenix: true);
  }
}