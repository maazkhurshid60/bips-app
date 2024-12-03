import 'package:bips_app/app/modules/profilesetting/controller/profile_setting_controller.dart';
import 'package:bips_app/app/modules/profilesetting/views/profile_bans_view.dart';
import 'package:bips_app/app/modules/profilesetting/views/profile_bono_view.dart';
import 'package:bips_app/app/modules/profilesetting/views/profile_contact_support.dart';
import 'package:bips_app/app/modules/profilesetting/views/profile_cre_pe_view.dart';
import 'package:bips_app/app/modules/profilesetting/views/profile_gallery_view.dart';
import 'package:bips_app/app/modules/profilesetting/views/profile_view1.dart';
import 'package:bips_app/app/modules/profilesetting/views/single_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainProfileSettingView extends GetView<ProfileSettingController> {
  const MainProfileSettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Obx(() {
      if (controller.currentProfileIndex.value == 0) {
        return const ProfileMainWidgetView();
      } else if (controller.currentProfileIndex.value == 1) {
        return const SingleProfile();
      } else if (controller.currentProfileIndex.value == 2) {
        return const ProfileCrepeView();
      } else if (controller.currentProfileIndex.value == 3) {
        return const ProfileBansview();
      } else if (controller.currentProfileIndex.value == 4) {
        return const ProfileBonoView();
      } else if (controller.currentProfileIndex.value == 5) {
        return const ProfileContactSupport();
      } else if (controller.currentProfileIndex.value == 6) {
        return const ProfileGaleryView();
      }
      return const SizedBox.shrink();
    })));
  }
}
