import 'package:bips_app/app/constants/app_colors.dart';
import 'package:bips_app/app/constants/app_text_style.dart';
import 'package:bips_app/app/modules/home/controllers/home_controller.dart';
import 'package:bips_app/app/modules/home/views/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LocationView extends GetView<HomeController> {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20.w, right: 20.h, bottom: 20.h),
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
                  placeholder: "De qui avez-vous besoin?",
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 15.0.w),
                    child: Icon(Icons.search, size: 22.h, color: Colors.black),
                  ),
                  style: TextStyle(fontSize: 14.sp, color: Color(0xffBFBFBF)),
                  backgroundColor: Colors.transparent,
                  padding: EdgeInsets.only(left: 20),
                ),
              ),
              SizedBox(height: 100.h),
              for (int i = 0; i < 6; i++) ...{
                customField(content: fieldcontent[i]),
                if (i != 5) SizedBox(height: 30.h),
              },
              const Spacer(),
              BackScreen(controller: controller)
            ],
          ),
        ),
      ),
    );
  }
}

List<String> fieldcontent = [
  'Pays',
  "Région",
  'Ville',
  "Commune",
  'Quartier',
  "Rue"
];

class customField extends StatelessWidget {
  const customField({super.key, this.content});
  final String? content;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53.h,
      width: 397.w,
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.golden),
          color: Color(0xffBFBFBF).withOpacity(0.41),
          borderRadius: BorderRadius.circular(12).r),
      child: Text(
        '$content',
        style: TextStyle(
          color: Colors.black,
          fontSize: 14.sp,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, this.controller, this.text});
  final String? text;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: TextFormField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(5.h),
            border: const OutlineInputBorder(borderSide: BorderSide.none),
            hintText: text ??
                "Pays .............................................................................",
            hintStyle: AppTextStyle.otherTextStyle
                .copyWith(fontSize: 14.h, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
