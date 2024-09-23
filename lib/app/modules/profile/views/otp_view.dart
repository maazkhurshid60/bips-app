import 'package:bips_app/app/modules/dashboard/views/dashboard_view.dart';
import 'package:bips_app/app/modules/profile/controllers/profile_controller.dart';
import 'package:bips_app/app/modules/profile/widgets/circle_widget.dart';
import 'package:bips_app/app/modules/profile/widgets/custom_text_form_field.dart';
import 'package:bips_app/app/modules/profile/widgets/drop_down_widget.dart';
import 'package:bips_app/app/modules/profile/widgets/profiler_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OtpVerificationView extends GetView<ProfileController> {
  const OtpVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding:
            EdgeInsets.only(top: 53.h, bottom: 85.h, left: 29.w, right: 29.w),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ProfilerHeader(),
              SizedBox(height: 90.h),
              const CustomTextInputField(
                hintText:
                    "Insérer le code.....................................",
              ),
              SizedBox(height: 111.h),
              Container(
                height: 24.h,
                width: 129.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 0.66, color: const Color(0xFFBFBFBF))),
                child: DropDownWidget(controller: controller),
              ),
              SizedBox(height: 111.h),
              const Text(
                'Mot de passe oublié',
                style: TextStyle(
                  color: Color(0xFFBFBFBF),
                  fontSize: 16,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.w300,
                  height: 0,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  try {
                    Get.to(() => const DashboardView());
                  } catch (e) {
                    debugPrint(e.toString());
                  }
                },
                child: const CircleWidget(),
              )
            ],
          ),
        ),
      )),
    );
  }
}
