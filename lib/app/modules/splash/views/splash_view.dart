import 'package:bips_app/app/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
       resizeToAvoidBottomInset: false,
      body:  SafeArea(
        child: Center(
          
          child:Padding(
            padding:  EdgeInsets.symmetric(vertical: 40.h),
            child: Container(

              decoration:  BoxDecoration(
                border: Border.all(color: Colors.black)
                ,borderRadius: BorderRadius.circular(50.r)
              ),
             
              width: double.infinity,
              child: Obx(() =>  controller.textIndex.value ==0? const Text1Widget(): const Text2Widget())),
          )
        ),
      ),
    );
  }
}

class Text1Widget extends StatelessWidget {
  const Text1Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       Image.asset("assets/images/comma.png", height: 100.h,width: 100.w, color: const Color(0xffFFD700),),
        Text("Akwaba!", style: AppTextStyle.largebold),
        Text("Bienvenue!", style: AppTextStyle.largebold)
      ],
    );
  }
}
class Text2Widget extends StatelessWidget {
  const Text2Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Bip’S", style: AppTextStyle.extralargebold.copyWith(fontSize: 80.sp)),
        Text("Oser autrement!", style: AppTextStyle.mediumLight.copyWith(fontStyle: FontStyle.italic, fontWeight: FontWeight.w600)),
             ]
    );
  }
}
