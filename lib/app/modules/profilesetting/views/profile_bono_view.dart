import 'package:bips_app/app/constants/app_colors.dart';
import 'package:bips_app/app/modules/home/views/search_view.dart';
import 'package:bips_app/app/modules/profilesetting/controller/profile_setting_controller.dart';
import 'package:bips_app/app/modules/profilesetting/widgets/profile_setting_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BonoCard extends StatelessWidget {
  final Color? c;
  final String? title, t, t2;
  const BonoCard({super.key, this.title, this.c, this.t, this.t2});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 361.w,
      height: 162.h,
      child: Stack(
        children: [
          Container(
            width: 361.w,
            height: 162.h,
            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: const Alignment(0.00, -1.00),
                end: const Alignment(0, 1),
                colors: [c ?? const Color(0xFFCBA95C), Colors.white],
              ),
              shape: RoundedRectangleBorder(
                side: c != null
                    ? BorderSide.none
                    : const BorderSide(width: 1, color: Color(0xFFCBA95C)),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          Positioned(
            right: 20.w,
            top: 10.h,
            child: Container(
              width: 26.46.w,
              height: 22.39.h,
              alignment: Alignment.center,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(),
              ),
              child: c != null
                  ? null
                  : Icon(Icons.clear, color: AppColors.golden, size: 15.h),
            ),
          ),
          Positioned(
            left: 222.w,
            top: 94.h,
            child: Text(
              t ?? 'F CFA',
              style: TextStyle(color: Colors.black, fontSize: 14.sp),
            ),
          ),
          Positioned(
            left: 168.w,
            top: 45.h,
            child: Text(
              'Montant',
              style: TextStyle(color: Colors.black, fontSize: 20.sp),
            ),
          ),
          Positioned(
            left: 26.w,
            top: 40.h,
            child: Text(
              title ?? '5%',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 64.sp,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Positioned(
            left: 180.w,
            top: 94.h,
            child: Text(
              '${t2 ?? ""}150',
              style: TextStyle(color: Colors.black, fontSize: 14.sp),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfilebonoTabwidget extends GetView<ProfileSettingController> {
  final int? index;
  final String? img, title;
  const ProfilebonoTabwidget({super.key, this.index, this.img, this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () {
            return Container(
              width: 80.w,
              height: 41.h,
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                color: const Color(0x49D9D9D9),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 1.02,
                      color: controller.porfBonoTabIndex.value == index
                          ? const Color(0xFFCBA95C)
                          : Colors.white),
                  borderRadius: BorderRadius.circular(12.21),
                ),
              ),
              child: SvgPicture.asset("assets/svgs/bono_t_${img ?? "1"}.svg"),
            );
          },
        ),
        SizedBox(height: 10.h),
        Text(
          title ?? 'Bonô’S',
          style: TextStyle(color: Colors.black, fontSize: 10.18.sp),
        ),
      ],
    );
  }
}

class ProfileBonoView extends GetView<ProfileSettingController> {
  const ProfileBonoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Obx(() => controller.porfBonoTabIndex.value == 3
            ? Image.asset("assets/images/map.png",
                width: double.infinity, fit: BoxFit.cover)
            : const SizedBox.shrink()),
        Column(
          children: [
            const ProfileSettingHeader(),
            SizedBox(height: 14.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30).w,
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () => controller.porfBonoTabIndex.value = 0,
                      child: const ProfilebonoTabwidget(index: 0)),
                  SizedBox(width: 12.w),
                  GestureDetector(
                      onTap: () => controller.porfBonoTabIndex.value = 1,
                      child: const ProfilebonoTabwidget(
                          index: 1, img: "2", title: "Rabai’S")),
                  SizedBox(width: 12.w),
                  GestureDetector(
                      onTap: () => controller.porfBonoTabIndex.value = 2,
                      child: const ProfilebonoTabwidget(
                          index: 2, img: "3", title: "Iri’S")),
                  SizedBox(width: 12.w),
                  GestureDetector(
                      onTap: () => controller.porfBonoTabIndex.value = 3,
                      child: const ProfilebonoTabwidget(
                          index: 3, img: "4", title: "Taxi’S")),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Expanded(child: Obx(() {
              if (controller.porfBonoTabIndex.value == 0) {
                return const Tab1();
              } else if (controller.porfBonoTabIndex.value == 1) {
                return const Tab1(isTab2: true);
              } else if (controller.porfBonoTabIndex.value == 2) {
                return const Tab3();
              }

              return Column(
                children: [
                  const Spacer(),
                  Column(
                    children: [
                      Image.asset("assets/images/mapgroup.png"),
                      // const Spacer(),
                      // Container(
                      //   width: 416.w,
                      //   height: 104.h,
                      //   alignment: Alignment.center,
                      //   decoration: ShapeDecoration(
                      //     shadows: const [
                      //       BoxShadow(blurRadius: 30, color: Colors.black)
                      //     ],
                      //     color: Colors.transparent,
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(30),
                      //     ),
                      //   ),
                      //   child: Container(
                      //     width: 307.w,
                      //     height: 50.h,
                      //     alignment: Alignment.center,
                      //     decoration: ShapeDecoration(
                      //       color: Colors.white,
                      //       shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(10),
                      //       ),
                      //     ),
                      //     child: Text(
                      //       'Souscrivez à Taxi’S',
                      //       style: TextStyle(
                      //         color: Colors.black,
                      //         fontSize: 14.sp,
                      //         fontWeight: FontWeight.w600,
                      //       ),
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                  SizedBox(height: 10.h),
                ],
              );
            })),
            // const Spacer(),

            CustomBackGesture(ontap: () {
              controller.currentProfileIndex.value = 0;
            }),
            SizedBox(height: 10.h),
          ],
        ),
      ],
    );
  }
}

class Tab1 extends StatelessWidget {
  final bool? isTab2;
  const Tab1({super.key, this.isTab2});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BonoCard(t2: isTab2 != null ? "(-)" : null),
        SizedBox(height: 15.h),
        BonoCard(
            c: const Color(0xFFD9D9D9),
            title: "10%",
            t2: isTab2 != null ? "(-)" : null),
        SizedBox(height: 15.h),
        BonoCard(
            c: const Color(0xFFD9D9D9),
            title: "15%",
            t2: isTab2 != null ? "(-)" : null),
      ],
    );
  }
}

class Tab3 extends StatelessWidget {
  const Tab3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 15.w, right: 8.w, top: 15.h, bottom: 10.h),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/tab2_img.png"),
              fit: BoxFit.fill)),
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //     Align(
      //       alignment: Alignment.topRight,
      //       child: Container(
      //         width: 40.w,
      //         height: 40.h,
      //         margin: EdgeInsets.only(right: 8.w),
      //         alignment: Alignment.center,
      //         decoration: ShapeDecoration(
      //           color: Colors.white,
      //           shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(7)),
      //         ),
      //         child: const Icon(Icons.bookmark_outline_rounded),
      //       ),
      //     ),
      //     SizedBox(height: 245.h),
      //     SizedBox(
      //       width: 417.w,
      //       height: 88.h,
      //       child: Stack(
      //         children: [
      //           Text(
      //             'Iri’S',
      //             style: TextStyle(
      //                 color: const Color(0xFFCBA95C),
      //                 fontSize: 40.sp,
      //                 fontWeight: FontWeight.w800),
      //           ),
      //           Positioned(
      //             left: 112.w,
      //             bottom: 0,
      //             child: Container(
      //               width: 79.w,
      //               height: 30.h,
      //               alignment: Alignment.center,
      //               decoration: ShapeDecoration(
      //                 shape: RoundedRectangleBorder(
      //                   side: const BorderSide(width: 1, color: Colors.white),
      //                   borderRadius: BorderRadius.circular(5),
      //                 ),
      //               ),
      //               child: Text(
      //                 'C 150',
      //                 textAlign: TextAlign.center,
      //                 style: TextStyle(color: Colors.white, fontSize: 11.sp),
      //               ),
      //             ),
      //           ),
      //           Positioned(
      //             left: 3.w,
      //             bottom: 0,
      //             child: Container(
      //               width: 79.w,
      //               height: 30.h,
      //               alignment: Alignment.center,
      //               decoration: ShapeDecoration(
      //                 shape: RoundedRectangleBorder(
      //                   side: const BorderSide(width: 1, color: Colors.white),
      //                   borderRadius: BorderRadius.circular(5),
      //                 ),
      //               ),
      //               child: Text(
      //                 'C 2000',
      //                 textAlign: TextAlign.center,
      //                 style: TextStyle(color: Colors.white, fontSize: 11.sp),
      //               ),
      //             ),
      //           ),
      //           Positioned(
      //             right: 2,
      //             top: 30.h,
      //             child: Row(
      //               children: [
      //                 Icon(Icons.keyboard_arrow_down,
      //                     color: Colors.white, size: 30.h),
      //                 SizedBox(width: 3.w),
      //                 Text(
      //                   'C 150',
      //                   style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 24.sp,
      //                     fontWeight: FontWeight.w600,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     const Spacer(),
      //     Container(
      //       width: 416.w,
      //       height: 128.h,
      //       alignment: Alignment.center,
      //       decoration: ShapeDecoration(
      //         shadows: const [
      //           BoxShadow(blurRadius: 20, color: Color(0x9ECBA95C))
      //         ],
      //         color: Colors.transparent,
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(30),
      //         ),
      //       ),
      //       child: Container(
      //         width: 307.w,
      //         height: 50.h,
      //         alignment: Alignment.center,
      //         decoration: ShapeDecoration(
      //           color: Colors.white,
      //           shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(10),
      //           ),
      //         ),
      //         child: Text(
      //           'Souscrivez à Iri’S',
      //           style: TextStyle(
      //             color: Colors.black,
      //             fontSize: 14.sp,
      //             fontWeight: FontWeight.w600,
      //           ),
      //         ),
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}
