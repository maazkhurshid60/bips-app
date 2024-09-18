import 'package:bips_app/app/modules/profile/views/otp_view.dart';
import 'package:bips_app/app/modules/profile/widgets/circle_widget.dart';
import 'package:bips_app/app/modules/profile/widgets/custom_text_form_field.dart';
import 'package:bips_app/app/modules/profile/widgets/profiler_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.only(top: 53.h, bottom: 85.h, left: 29.w, right: 29.w),
          child: Column(
            children: [
              const ProfilerHeader(),
              SizedBox(height: 92.h),
              const CustomTextInputField(),
              SizedBox(height: 20.h),
              const CustomTextInputField(
                hintText: "Mobile Money .........................",
              ),
              SizedBox(height: 20.h),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  try {
                    Get.to(() => const OtpVerificationView());
                  } catch (e) {
                    debugPrint(e.toString());
                  }
                },
                child: const CircleWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
