import 'package:bips_app/app/constants/app_colors.dart';
import 'package:bips_app/app/modules/home/controllers/home_controller.dart';
import 'package:bips_app/app/modules/home/views/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CredibilityView extends GetView<HomeController> {
  const CredibilityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: 20.w, left: 20.w, bottom: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.location_on_sharp, size: 31.h),
              Text(
                '4 km',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                width: 396.21.w,
                height: 45.53.h,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 2.32, color: Color(0xFFBFBFBF)),
                    borderRadius: BorderRadius.circular(30.21),
                  ),
                ),
                child: CupertinoSearchTextField(
                  placeholder: "De qui avez-vous besoin?",
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 15.0.w),
                    child: Icon(Icons.search, size: 22.h, color: Colors.black),
                  ),
                  style: TextStyle(
                      fontSize: 14.sp, color: const Color(0xffBFBFBF)),
                  backgroundColor: Colors.transparent,
                  padding: const EdgeInsets.only(left: 20),
                ),
              ),
              SizedBox(height: 27.h),
              SizedBox(
                  height: 80.h,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0).w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SingleItem(
                              onTap: () {
                                controller.activePage.value = 6;
                              },
                            ),
                            SizedBox(height: 5.h),
                            const Text(
                              'Crédibilité',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SingleItem(
                              img: "ref",
                              onTap: () {
                                controller.activePage.value = 7;
                              },
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              'Swichter',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11.sp,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SingleItem(
                              img: "help",
                              onTap: () {
                                controller.activePage.value = 8;
                              },
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              'Aide',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11.sp,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
              SizedBox(height: 80.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20).w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0).h,
                      child:
                          SvgPicture.asset("assets/svgs/h1.svg", height: 30.h),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      'Question',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15.h,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              const DividerBoxRow(),
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20).w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0).h,
                      child: Image.asset("assets/images/h2.png", height: 30.h),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      'Iri’S',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    const Spacer(),
                    Icon(Icons.arrow_forward_ios, size: 15.h)
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              const DividerBoxRow(),
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20).w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0).h,
                      child: Image.asset("assets/images/h3.png", height: 30.h),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      'Contacte-nous',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    const Spacer(),
                    Icon(Icons.arrow_forward_ios, size: 15.h)
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              const DividerBoxRow(),
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20).w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0).h,
                      child: Image.asset("assets/images/h4.png", height: 30.h),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      'Retrouve-nous',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    const Spacer(),
                    Icon(Icons.arrow_forward_ios, size: 15.h)
                  ],
                ),
              ),
              const Spacer(),
              BackScreen(controller: controller)
            ],
          ),
        ),
      ),
    );
  }
}

class DividerBox extends StatelessWidget {
  const DividerBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      height: 49,
      decoration: ShapeDecoration(
        color: const Color(0x49D9D9D9),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

class DividerBoxRow extends StatelessWidget {
  const DividerBoxRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          DividerBox(),
          DividerBox(),
          DividerBox(),
        ]);
  }
}

class SingleItem extends StatelessWidget {
  final String? img;
  final Function()? onTap;
  const SingleItem({super.key, this.img, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 94.w,
        height: 49.h,
        alignment: Alignment.center,
        decoration: ShapeDecoration(
          color: const Color(0x49D9D9D9),
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1,
                color: img == "help" ? AppColors.golden : Colors.white),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: SvgPicture.asset(
          "assets/svgs/${img ?? "smile"}.svg",
          height: 24.h,
          width: 24.w,
        ),
      ),
    );
  }
}
