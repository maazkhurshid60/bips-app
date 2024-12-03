import 'package:bips_app/app/constants/app_colors.dart';
import 'package:bips_app/app/modules/Accounts/contrtoller/account_controller.dart';
import 'package:bips_app/app/modules/home/controllers/home_controller.dart';
import 'package:bips_app/app/modules/home/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

PersistentBottomSheetController? bottomsheetcontroller;

class DetailsMarkersCustom extends StatelessWidget {
  final String? t;
  final Function()? ontap;
  const DetailsMarkersCustom({super.key, this.t, this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 150.w,
        height: 50.h,
        padding: EdgeInsets.all(5.h),
        decoration: ShapeDecoration(
          color: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          shadows: const [
            BoxShadow(
              color: Color(0x26000000),
              blurRadius: 8,
              offset: Offset(0, -5),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                t ?? 'Chauffeur- Libre ;  1500/H ; Yopougon 12 km',
                style: TextStyle(
                  color: const Color(0xFFBFBFBF),
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Image.asset("assets/images/bono.png", height: 25.h, width: 25.w)
          ],
        ),
      ),
    );
  }
}

class MapMainView extends GetView<HomeController> {
  const MapMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.activePage.value == 1
            ? const SearchView()
            : Stack(
                children: [
                  Image.asset("assets/images/map.png",
                      width: double.infinity, fit: BoxFit.cover),
                  //  FlutterMap(
                  //     mapController: controller.mapController,
                  //     options: const MapOptions(
                  //       initialCenter: LatLng(51.5074, -0.1278), // London
                  //       initialZoom: 9.0,
                  //     ),
                  //     children: [
                  //       TileLayer(
                  //         urlTemplate:
                  //             "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                  //       ),
                  //     ]),
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.only(left: 7.w, right: 5.w),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 27).w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: 312.w,
                                    height: 45.h,
                                    alignment: Alignment.centerLeft,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15.w),
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      shadows: const [
                                        BoxShadow(
                                          color: Color(0x3F000000),
                                          blurRadius: 4,
                                          offset: Offset(0, 4),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                    child: TextButton.icon(
                                        onPressed: () =>
                                            controller.activePage.value = 1,
                                        icon: const Icon(Icons.search,
                                            color: Colors.black),
                                        label: Text(
                                          'Que savez-vous faire ?',
                                          style: TextStyle(
                                              color: const Color(0xFF959595),
                                              fontSize: 13.sp),
                                        ))),
                                Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 20).h,
                                    child: Image.asset(
                                        "assets/images/c_img1.png")),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: 140.h,
                      right: 5.w,
                      child: DetailsMarkersCustom(
                          ontap: () async {
                            showBottomDetails(context);
                          },
                          t: "Aide aux études ; 15 000 / Mois ;  15 km")),

                  Positioned(
                      top: 200.h,
                      left: 5.w,
                      child: DetailsMarkersCustom(
                        ontap: () async {
                          showBottomDetails(context);
                        },
                      )),
                  Positioned(
                      top: 250.h,
                      left: 100.w,
                      child: CircleAvatar(
                          backgroundColor: Colors.white, radius: 25.r)),

                  Positioned(
                      top: 290.h,
                      right: 120.w,
                      child: CircleAvatar(
                          backgroundColor: Colors.white, radius: 25.r)),

                  Positioned(
                      top: 384.h,
                      right: 30.w,
                      child: DetailsMarkersCustom(
                          ontap: () => showBottomDetails(context),
                          t: "Lessiveur ; 700 / T ;  8 km")),
                  Positioned(
                      top: 490.h,
                      left: 30.w,
                      child: DetailsMarkersCustom(
                          ontap: () => showBottomDetails(context),
                          t: "Cuisinier; 500 / H ;  6 km")),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 75).w,
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                backgroundColor: Colors.black, radius: 25.r),
                            SizedBox(width: 10.w),
                            Text(
                              'Moi',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Inter'),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
      ),
    );
  }

  void showBottomDetails(BuildContext context) {
    bottomsheetcontroller = Scaffold.of(context).showBottomSheet((b) {
      return Container(
        width: 431.w,
        height: 634.h,
        margin: EdgeInsets.all(10.h),
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage("assets/images/c_img5.png"),
                fit: BoxFit.cover),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(50)),
        child: Stack(
          children: [
            Positioned(
              bottom: 60.h,
              left: 60.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.find<AccountController>().pageIndex.value = 2;
                      controller.activePage.value = 11;
                    },
                    child: Row(
                      children: [
                        Text(
                          "Marie. K \nGardienne",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: const Icon(
                            Icons.star,
                            color: AppColors.golden,
                          ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.activePage.value = 9;
                    },
                    child: Image.asset("assets/images/star.png",
                        height: 20.h, width: 40.w),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 50.h,
              right: 20.h,
              child: Column(children: [
                GestureDetector(
                    onTap: () {
                      controller.activePage.value = 3;
                    },
                    child: Image.asset("assets/images/bono.png",
                        color: Colors.white, height: 33.h)),
                SizedBox(height: 5.h),
                Text(
                  "Bonô",
                  style: TextStyle(
                    color: const Color(0xFFBFBFBF),
                    fontSize: 14.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 10.h),
                GestureDetector(
                  onTap: () {
                    // controller.activePage.value = 12;
                  },
                  child: Image.asset("assets/images/hand.png",
                      color: Colors.white, height: 36.h),
                ),
                SizedBox(height: 10.h),
                GestureDetector(
                    onTap: () {
                      controller.activePage.value = 4;
                    },
                    child: SvgPicture.asset("assets/svgs/money.svg",
                        height: 40.h)),
                SizedBox(height: 10.h),
                GestureDetector(
                    onTap: () {
                      controller.activePage.value = 10;
                    },
                    child: Image.asset("assets/images/messages.png",
                        color: Colors.white, height: 36.h)),
                SizedBox(height: 10.h),
                GestureDetector(
                    onTap: () {
                      controller.activePage.value = 6;
                    },
                    child: Image.asset("assets/images/popdot.png",
                        color: Colors.white, height: 40.h)),
              ]),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child: CustomBackGesture(ontap: () {
                    bottomsheetcontroller?.close();
                  }),
                )),
          ],
        ),
      );
    }, backgroundColor: Colors.transparent);
  }
}
