import 'package:bips_app/app/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body:  SafeArea(
        child: Center(
          child:Obx(() =>  controller.textIndex.value ==0? const Text1Widget(): const Text2Widget())
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
        Text(",", style:AppTextStyle.extraMediumbold),
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
        Text("Bip’S", style: AppTextStyle.extralargebold),
        Text("Oser autrement!", style: AppTextStyle.mediumLight.copyWith(fontStyle: FontStyle.italic, fontWeight: FontWeight.w600)),
             ]
    );
  }
}
