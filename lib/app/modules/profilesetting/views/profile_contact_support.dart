import 'package:bips_app/app/modules/home/views/search_view.dart';
import 'package:bips_app/app/modules/profilesetting/controller/profile_setting_controller.dart';
import 'package:bips_app/app/modules/profilesetting/widgets/profile_setting_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ConSupOptionWidget extends StatelessWidget {
  final String? t;
  const ConSupOptionWidget({super.key, this.t});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 340.w,
      padding: EdgeInsets.all(10.r),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          color: const Color(0xffD9D9D9).withOpacity(0.18),
          borderRadius: BorderRadius.circular(16.r)),
      child: Text(
        t ?? 'Informations légales',
        style: TextStyle(
            color: Colors.black,
            fontSize: 10.18.sp,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}

class ProfileContactSupport extends GetView<ProfileSettingController> {
  const ProfileContactSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileSettingHeader(),
        SizedBox(height: 50.h),
        const ConSupOptionWidget(),
        SizedBox(height: 37.h),
        const ConSupOptionWidget(t: "Politiques sur la vie privée"),
        SizedBox(height: 37.h),
        const ConSupOptionWidget(t: "Désactiver votre compte"),
        SizedBox(height: 37.h),
        const ConSupOptionWidget(t: "Désactiver votre compte"),
        SizedBox(height: 37.h),
        const ConSupOptionWidget(t: ""),
        const Spacer(),
        CustomBackGesture(
            ontap: () => controller.currentProfileIndex.value = 0),
        SizedBox(height: 10.h)
      ],
    );
  }
}
