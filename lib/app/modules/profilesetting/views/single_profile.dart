import 'package:bips_app/app/modules/home/views/search_view.dart';
import 'package:bips_app/app/modules/profilesetting/controller/profile_setting_controller.dart';
import 'package:bips_app/app/modules/profilesetting/widgets/profile_option.dart';
import 'package:bips_app/app/modules/profilesetting/widgets/profile_setting_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SingleProfile extends GetView<ProfileSettingController> {
  const SingleProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileSettingHeader(),
        SizedBox(height: 50.h),
        ProfileSettingOption(base: "single_p_", txt: "Nom", w: 20.w, img: "1"),
        SizedBox(height: 30.h),
        ProfileSettingOption(
            base: "single_p_", txt: "Téléphone", w: 20.w, img: "2"),
        SizedBox(height: 30.h),
        ProfileSettingOption(
            base: "single_p_", txt: "Couriel", w: 20.w, img: "3"),
        SizedBox(height: 30.h),
        ProfileSettingOption(base: "single_p_", txt: "CNI", w: 20.w, img: "4"),
        SizedBox(height: 30.h),
        ProfileSettingOption(
            base: "single_p_", txt: "Permis No", w: 20.w, img: "5"),
        SizedBox(height: 30.h),
        ProfileSettingOption(
            base: "single_p_", txt: "Résidence", w: 20.w, img: "6"),
        const Spacer(),
        CustomBackGesture(ontap: () {
          controller.currentProfileIndex.value = 0;
        }),
        SizedBox(height: 10.h),
      ],
    );
  }
}
