import 'dart:async';

import 'package:bips_app/app/modules/profile/views/profile_view.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  RxInt textIndex = 0.obs;


  changeTransition()async{
    Future.delayed(const Duration(seconds: 3), (){
      textIndex.value ++;
    });
  }

  changeScreen()async{
     Future.delayed(const Duration(seconds: 6), (){
      Get.off(()=>const ProfileView());
    });
  }

  @override
  void onInit() {
   changeTransition();
   changeScreen();
    super.onInit();
  }
}
