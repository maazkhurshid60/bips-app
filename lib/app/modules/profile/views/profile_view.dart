import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.h),
          child: Column(
            children: [
              Container(
                  height: 45.h,
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10).r,
                      border: Border.all(width: 2, color: Colors.black)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 45, width: 20),
                      Text(
                        "Bip’S",
                        style: TextStyle(
                            fontSize: 30.sp, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.lock, size: 35.h)
                    ],
                  )),
              SizedBox(height: 30.h),
              CustomTextInputField(),
              SizedBox(height: 20.h),
              CustomTextInputField(
                hintText:
                    "Mobile Money........................................",
              ),
              SizedBox(height: 20.h),
              Container(
                  height: 45.h,
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10).r,
                      border: Border.all(width: 1, color: Colors.black)),
                  child: Text(
                    "les termes et conditions",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400),
                  )),
              SizedBox(height: 20.h),
              Container(
                  height: 45.h,
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10).r,
                      border: Border.all(width: 1, color: Colors.black)),
                  child: Text(
                    "les politiques sur la vie privée",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400),
                  )),
              const Spacer(),
               CircleAvatar(
                radius: 20.r,
                backgroundColor: const Color.fromARGB(255, 201, 165, 7),)
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextInputField extends StatelessWidget {
  CustomTextInputField({super.key, this.hintText, this.controller});

  TextEditingController? controller;
  String? hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45.h,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10).r,
            border: Border.all(width: 1, color: Colors.black)),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
              border: const OutlineInputBorder(borderSide: BorderSide.none),
              hintText:
                  hintText ?? "Nom et Prénom /Nom de l’entreprise........"),
        ));
  }
}
