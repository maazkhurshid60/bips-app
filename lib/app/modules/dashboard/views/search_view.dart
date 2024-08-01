import 'package:bips_app/app/constants/app_colors.dart';
import 'package:bips_app/app/constants/app_text_style.dart';
import 'package:bips_app/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SearchView extends GetView<DashboardController> {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.h),
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 80.h),
            const CupertinoSearchTextField(),
            SizedBox(height: 40.h),
            const RowWidget(),
            SizedBox(height: 20.h),
            const RowWidget(
              text1: "Colffeur",
              tex2: "Entraineur",
              image1: "assets/images/hair.png",
              image2: "assets/images/gym.png",
            ),
            const Spacer(),
            BackScreen(controller: controller),
          ],
        ),
      ),
    );
  }
}

class BackScreen extends StatelessWidget {
  const BackScreen({
    super.key,
    required this.controller,
  });

  final DashboardController controller;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          controller.activePage.value = 0;
        },
         child: Container(
          height: 40.h,
          width: 40.w,
        decoration:  BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black),
         color:   AppColors.yellowbrown,
        ),
          child:  Icon(Icons.clear,color: Colors.white, size: 25.h),),
       );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
    this.image1,
    this.text1,
    this.image2,
    this.tex2
  });

  final String? image1;
  final String? text1;
  final String? image2;
  final String? tex2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            height: 130.h,
            width: 150.w,
            decoration: BoxDecoration(
                border:Border.all(color:Colors.black), borderRadius: BorderRadius.circular(20).r),
            child: Column(
              children: [
                Expanded(
                    flex: 3,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)).r,
                      child: Image.asset(image1?? "assets/images/momchild.png",
                          fit: BoxFit.cover),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 224, 208, 137),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20.r),
                              bottomRight: Radius.circular(20.r))),
                    child: Text(text1?? "Gardienne", style: AppTextStyle.mediumbold),
                    ))
              ],
            ),
          ),
        ),
        SizedBox(width: 10.h),
        Expanded(
          child: Container(
            height: 130.h,
            width: 150.w,
            decoration: BoxDecoration(
                border:Border.all(color:Colors.black), borderRadius: BorderRadius.circular(20).r),
            child: Column(
              children: [
                Expanded(
                    flex: 3,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)).r,
                      child: Image.asset(image2?? "assets/images/chief.png",
                          fit: BoxFit.fill),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                           color: AppColors.lightbrown,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20.r),
                              bottomRight: Radius.circular(20.r))
                              ),
                      child: Text(tex2?? "Cuisinier", style: AppTextStyle.mediumbold),
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
