import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        Text(",", style: TextStyle(fontSize:40.sp, fontWeight: FontWeight.bold),),
        Text("Akwaba!", style: TextStyle(fontSize:30.sp, fontWeight: FontWeight.bold),),
        Text("Bienvenue!", style: TextStyle(fontSize:30.sp, fontWeight: FontWeight.bold),)
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
        Text("Bip’S", style: TextStyle(fontSize:50.sp, fontWeight: FontWeight.bold),),
        Text("Oser autrement!", style: TextStyle(fontSize:20.sp, fontWeight: FontWeight.w600),),
             ],
    );
  }
}
