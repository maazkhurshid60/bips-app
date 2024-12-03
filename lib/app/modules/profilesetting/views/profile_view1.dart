import 'package:bips_app/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:bips_app/app/modules/home/views/search_view.dart';
import 'package:bips_app/app/modules/profilesetting/controller/profile_setting_controller.dart';
import 'package:bips_app/app/modules/profilesetting/widgets/profile_image_text.dart';
import 'package:bips_app/app/modules/profilesetting/widgets/profile_option.dart';
import 'package:bips_app/app/modules/profilesetting/widgets/profile_setting_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileMainWidgetView extends GetView<ProfileSettingController> {
  const ProfileMainWidgetView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const ProfileSettingHeader(),
        SizedBox(height: 50.h),
        GestureDetector(
            onTap: () async {
              // try {
              //   final ImagePicker picker = ImagePicker();
              //   await picker.pickImage(source: ImageSource.gallery);
              // } catch (e) {
              //   debugPrint(e.toString());
              // }
              controller.currentProfileIndex.value = 6;
            },
            child: const ProfileImageAndText()),
        SizedBox(height: 29.h),
        GestureDetector(
            onTap: () => controller.currentProfileIndex.value = 1,
            child: const ProfileSettingOption()),
        SizedBox(height: 29.h),
        GestureDetector(
            onTap: () => controller.currentProfileIndex.value = 2,
            child: const ProfileSettingOption(img: "1", txt: "Cré - Pro")),
        SizedBox(height: 29.h),
        GestureDetector(
            onTap: () => controller.currentProfileIndex.value = 3,
            child: const ProfileSettingOption(img: "2", txt: "Ban’S")),
        SizedBox(height: 29.h),
        GestureDetector(
            onTap: () => controller.currentProfileIndex.value = 4,
            child: const ProfileSettingOption(img: "4", txt: "Bonô")),
        SizedBox(height: 29.h),
        GestureDetector(
            onTap: () => controller.currentProfileIndex.value = 5,
            child: const ProfileSettingOption(img: "3", txt: "Support")),
        const Spacer(),
        BackScreen1(controller: Get.find<DashboardController>()),
        SizedBox(height: 10.h)
      ],
    );
  }
}
