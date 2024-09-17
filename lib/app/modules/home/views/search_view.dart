import 'package:bips_app/app/constants/app_colors.dart';
import 'package:bips_app/app/constants/app_text_style.dart';
import 'package:bips_app/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:bips_app/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BackScreen extends StatelessWidget {
  final HomeController controller;

  const BackScreen({
    super.key,
    required this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.activePage.value = 0;
      },
      child: Container(
        height: 32.h,
        width: 33.w,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.golden,
        ),
        child: Icon(Icons.clear, color: Colors.white, size: 20.h),
      ),
    );
  }
}

class BackScreen1 extends StatelessWidget {
  final DashboardController controller;

  const BackScreen1({
    super.key,
    required this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.activeBottomIndex.value = 2;
      },
      child: Container(
        height: 32.h,
        width: 33.w,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.golden,
        ),
        child: Icon(Icons.clear, color: Colors.white, size: 20.h),
      ),
    );
  }
}

class RowWidget extends StatelessWidget {
  final String? image1;

  final String? text1;
  final String? image2;
  final String? tex2;
  const RowWidget({super.key, this.image1, this.text1, this.image2, this.tex2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            height: 111.h,
            width: 190.w,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black.withOpacity(0.3)),
                borderRadius: BorderRadius.circular(16).r),
            child: Column(
              children: [
                Expanded(
                    flex: 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16.r),
                              topRight: Radius.circular(16.r))
                          .r,
                      child: Image.asset(image1 ?? "assets/images/momchild.png",
                          fit: BoxFit.cover),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColors.golden,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16.r),
                              bottomRight: Radius.circular(16.r))),
                      child: Text(text1 ?? "Gardienne",
                          style: AppTextStyle.otherTextStyle.copyWith(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold)),
                    ))
              ],
            ),
          ),
        ),
        SizedBox(width: 10.h),
        Expanded(
          child: Container(
            height: 111.h,
            width: 190.w,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black.withOpacity(0.3)),
                borderRadius: BorderRadius.circular(16).r),
            child: Column(
              children: [
                Expanded(
                    flex: 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16.r),
                              topRight: Radius.circular(16.r))
                          .r,
                      child: Image.asset(image2 ?? "assets/images/chief.png",
                          fit: BoxFit.fill),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColors.golden,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16.r),
                              bottomRight: Radius.circular(16.r))),
                      child: Text(tex2 ?? "Cuisinier",
                          style: AppTextStyle.otherTextStyle.copyWith(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold)),
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SearchView extends GetView<HomeController> {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 14.h),
          height: double.infinity,
          child: Column(
            children: [
              Icon(Icons.location_on_sharp, size: 31.h),
              Text(
                '4 km',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                width: 396.21.w,
                height: 45.53.h,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 2.32, color: Color(0xFFBFBFBF)),
                    borderRadius: BorderRadius.circular(30.21),
                  ),
                ),
                child: CupertinoSearchTextField(
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 15.0.w),
                    child: Icon(Icons.search, size: 22.h, color: Colors.black),
                  ),
                  placeholder: "De qui avez-vous besoin?",
                  style: TextStyle(
                      fontSize: 14.sp, color: const Color(0xffBFBFBF)),
                  backgroundColor: Colors.transparent,
                  padding: const EdgeInsets.only(left: 20),
                ),
              ),
              SizedBox(height: 34.h),
              Expanded(
                  flex: 10,
                  child: ListView(
                    children: [
                      const RowWidget(),
                      SizedBox(height: 20.h),
                      const RowWidget(
                        text1: "Coiffeur",
                        tex2: "Entraineur sportif",
                        image1: "assets/images/hair.png",
                        image2: "assets/images/gym.png",
                      ),
                      SizedBox(height: 15.h),
                      const RowWidget(),
                      SizedBox(height: 15.h),
                      const RowWidget(
                        text1: "Coiffeur",
                        tex2: "Entraineur sportif",
                        image1: "assets/images/hair.png",
                        image2: "assets/images/gym.png",
                      ),
                      SizedBox(height: 15.h),
                      const RowWidget(),
                    ],
                  )),
              SizedBox(height: 10.h),
              BackScreen(controller: controller),
            ],
          ),
        ),
      ),
    );
  }
}
