import 'package:bips_app/app/modules/Accounts/contrtoller/account_controller.dart';
import 'package:bips_app/app/modules/chart/controller/chart_controller.dart';
import 'package:bips_app/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:bips_app/app/modules/home/controllers/home_controller.dart';
import 'package:bips_app/app/modules/messages/controller/messages_controller.dart';
import 'package:bips_app/app/modules/profile/controllers/profile_controller.dart';
import 'package:bips_app/app/modules/splash/controllers/splash_controller.dart';
import 'package:get/get.dart';

class Allbinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController(), fenix: true);
    Get.lazyPut<ProfileController>(() => ProfileController(), fenix: true);
    Get.lazyPut<DashboardController>(() => DashboardController(), fenix: true);
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<MessagesController>(() => MessagesController(), fenix: true);
    Get.lazyPut<AccountController>(() => AccountController(), fenix: true);
    Get.lazyPut<ChartController>(() => ChartController(), fenix: true);
  }
}
