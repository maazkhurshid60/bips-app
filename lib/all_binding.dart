import 'package:bips_app/app/modules/splash/bindings/splash_binding.dart';
import 'package:bips_app/app/modules/splash/controllers/splash_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class Allbinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut<SplashController>(() => SplashController(), fenix: true);
  }

}