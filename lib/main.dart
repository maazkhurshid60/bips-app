import 'package:bips_app/all_binding.dart';
import 'package:bips_app/app/modules/splash/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: false,
        builder: (context, child) {
         return GetMaterialApp(
        title: 'Flutter Demo',
        initialBinding: Allbinding(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
         
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashView(),
      );
        },
     
    );
  }
}

