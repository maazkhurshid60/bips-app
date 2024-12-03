import 'package:bips_app/app/modules/home/views/search_view.dart';
import 'package:bips_app/app/modules/profilesetting/controller/profile_setting_controller.dart';
import 'package:bips_app/app/modules/profilesetting/widgets/profile_setting_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileBansTabwidget extends GetView<ProfileSettingController> {
  final int? index;
  final String? img, title;
  const ProfileBansTabwidget({super.key, this.index, this.img, this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () {
            return Container(
              width: 97.w,
              height: 50.h,
              padding: EdgeInsets.all(10.h),
              alignment: Alignment.bottomCenter,
              decoration: ShapeDecoration(
                color: const Color(0x49D9D9D9),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 1.02,
                      color: controller.porfbansTabIndex.value == index
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

class ProfileBansview extends GetView<ProfileSettingController> {
  const ProfileBansview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileSettingHeader(),
        SizedBox(height: 30.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 67.0).w,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            GestureDetector(
                onTap: () => controller.porfbansTabIndex.value = 0,
                child: const ProfileBansTabwidget(index: 0, img: "7")),
            GestureDetector(
                onTap: () => controller.porfbansTabIndex.value = 1,
                child: const ProfileBansTabwidget(
                    index: 1, img: "8", title: "Info Ban’S")),
          ]),
        ),
        SizedBox(height: 50.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48).w,
          child: Obx(() {
            if (controller.porfbansTabIndex.value == 1) {
              return Column(
                children: [
                  Container(
                    width: 329.w,
                    height: 370.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 37.h),
                    decoration: BoxDecoration(
                        color: const Color(0x19444444),
                        borderRadius: BorderRadius.circular(25).r),
                    child: Column(
                      children: [
                        const ValiderTxt(),
                        SizedBox(height: 45.h),
                        const ValiderTxt(t: "Numéro de carte"),
                        SizedBox(height: 45.h),
                        const ValiderTxt(t: 'Code'),
                        SizedBox(height: 45.h),
                        const ValiderTxt(t: "Courriel"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    height: 30.h,
                    width: 179.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(16.r)),
                    child: Text(
                      'Valider',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              );
            }
            return Column(
              children: [
                Container(
                  height: 423.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 27.h),
                  decoration: BoxDecoration(
                      color: const Color(0x2DD9D9D9),
                      borderRadius: BorderRadius.circular(25).r),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 40.h,
                        width: 293.w,
                        padding: EdgeInsets.only(left: 20.w, top: 5.h),
                        decoration: BoxDecoration(
                            color: const Color(0xffD9D9D9).withOpacity(0.56),
                            borderRadius: BorderRadius.circular(16).r),
                        child: Text(
                          '5 juin, 2024',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      const TextLine(),
                      SizedBox(height: 20.h),
                      const TextLine(
                          t: "E-transfert ................................... 1400"),
                      SizedBox(height: 20.h),
                      const TextLine(
                          t: "Depôt............................................   2000"),
                      SizedBox(height: 20.h),
                      const TextLine(
                          t: "Règlement de facture.................-1000"),
                      SizedBox(height: 30.h),
                      Container(
                        height: 40.h,
                        width: 293.w,
                        padding: EdgeInsets.only(left: 20.w, top: 5.h),
                        decoration: BoxDecoration(
                            color: const Color(0xffD9D9D9).withOpacity(0.56),
                            borderRadius: BorderRadius.circular(16).r),
                        child: Text(
                          '4 juin, 2024',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      const TextLine(
                          t: "Depôt............................................       2000"),
                      SizedBox(height: 20.h),
                      const TextLine(
                          t: "Règlement de facture.................       -1000"),
                    ],
                  ),
                ),

                //
                Container(
                  width: 341,
                  height: 40,
                  padding: EdgeInsets.only(left: 20.h, top: 5.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16).r,
                      color: const Color(0xffD9D9D9)),
                  child: FittedBox(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Solde ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700),
                          ),
                          TextSpan(
                            text:
                                '......................................................',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          TextSpan(
                            text: '  1557',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            );
          }),
        ),
        const Spacer(),
        CustomBackGesture(
            ontap: () => controller.currentProfileIndex.value = 0),
        SizedBox(height: 10.h)
      ],
    );
  }
}

class TextLine extends StatelessWidget {
  final String? t;
  const TextLine({super.key, this.t});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Text(
        t ?? 'Visa debit ....................................... -140,20',
        style: TextStyle(
          color: Colors.black,
          fontSize: 14.sp,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w200,
        ),
      ),
    );
  }
}

class ValiderTxt extends StatelessWidget {
  final String? t;
  const ValiderTxt({super.key, this.t});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 305.w,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 19.w),
      decoration: BoxDecoration(
          color: const Color(0xffD9D9D9).withOpacity(0.57),
          borderRadius: BorderRadius.circular(16).r),
      child: Text(
        t ?? 'Nom',
        style: TextStyle(
            color: Colors.black, fontSize: 14.sp, fontWeight: FontWeight.w300),
      ),
    );
  }
}
