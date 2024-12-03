import 'package:bips_app/app/modules/home/views/search_view.dart';
import 'package:bips_app/app/modules/profilesetting/controller/profile_setting_controller.dart';
import 'package:bips_app/app/modules/profilesetting/widgets/profile_setting_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DipolmeTextWidget extends StatelessWidget {
  final String? t;
  const DipolmeTextWidget({super.key, this.t});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 22.w),
      decoration: BoxDecoration(
          color: const Color(0x49D9D9D9),
          borderRadius: BorderRadius.circular(17.r)),
      child: Text(
        t ?? 'Auto-didacte',
        style: t == "Nombre d’année"
            ? TextStyle(
                color: Colors.black,
                fontSize: 10.18.sp,
                fontWeight: FontWeight.w400,
              )
            : TextStyle(
                color: Colors.black,
                fontSize: 10.18.sp,
                fontWeight: FontWeight.w100),
      ),
    );
  }
}

class ProfileCrepeView extends GetView<ProfileSettingController> {
  const ProfileCrepeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileSettingHeader(),
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 60.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () => controller.porfprepeTabIndex.value = 0,
                  child: const ProfilePrepeTabwidget(index: 0)),
              GestureDetector(
                  onTap: () => controller.porfprepeTabIndex.value = 1,
                  child: const ProfilePrepeTabwidget(
                      index: 1, img: "6", title: "Exp - prof")),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50).w,
          child: Obx(() {
            if (controller.porfprepeTabIndex.value == 0) {
              return Column(
                children: [
                  const DipolmeTextWidget(),
                  SizedBox(height: 10.h),
                  const DipolmeTextWidget(t: "CEPE"),
                  SizedBox(height: 10.h),
                  const DipolmeTextWidget(t: "BEPC"),
                  SizedBox(height: 10.h),
                  const DipolmeTextWidget(t: "BT"),
                  SizedBox(height: 10.h),
                  const DipolmeTextWidget(t: "CAP"),
                  SizedBox(height: 10.h),
                  const DipolmeTextWidget(t: "BAC"),
                  SizedBox(height: 10.h),
                  const DipolmeTextWidget(t: "BTS"),
                  SizedBox(height: 10.h),
                  const DipolmeTextWidget(t: "LICENCE"),
                  SizedBox(height: 10.h),
                  const DipolmeTextWidget(t: "MASTER"),
                  SizedBox(height: 10.h),
                  const DipolmeTextWidget(t: "AUCUN"),
                ],
              );
            }
            return Column(
              children: [
                SizedBox(height: 110.h),
                const DipolmeTextWidget(t: "Nombre d’année")
              ],
            );
          }),
        ),
        const Spacer(),
        CustomBackGesture(ontap: () {
          controller.currentProfileIndex.value = 0;
        }),
        SizedBox(height: 10.h),
      ],
    );
  }
}

class ProfilePrepeTabwidget extends GetView<ProfileSettingController> {
  final int? index;
  final String? img, title;
  const ProfilePrepeTabwidget({super.key, this.index, this.img, this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () {
            return Container(
              width: 97.w,
              height: 50.h,
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                color: const Color(0x49D9D9D9),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 1.02,
                      color: controller.porfprepeTabIndex.value == index
                          ? const Color(0xFFCBA95C)
                          : const Color(0x2BBFBFBF)),
                  borderRadius: BorderRadius.circular(12.21),
                ),
              ),
              child: Image.asset("assets/images/bono_${img ?? "5"}.png"),
            );
          },
        ),
        SizedBox(height: 10.h),
        Text(
          title ?? 'Diplôme',
          style: TextStyle(color: Colors.black, fontSize: 10.18.sp),
        ),
      ],
    );
  }
}
