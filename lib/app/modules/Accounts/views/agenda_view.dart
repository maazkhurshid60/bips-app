import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AgendaView extends StatelessWidget {
  const AgendaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0).h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.arrow_back_ios_sharp, size: 15.h),
              const Text(
                'Janvier 2024',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10.18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              Icon(Icons.arrow_forward_ios_sharp, size: 15.h),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50.88.w,
                height: 450.98.h,
                padding: EdgeInsets.symmetric(vertical: 10.h),
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.25),
                  ),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Lundi',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w900,
                          height: 0,
                        ),
                      ),
                      Text(
                        '18',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w100,
                          height: 0,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'Mardi',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.18.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w900,
                          height: 0,
                        ),
                      ),
                      Text(
                        '19',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.42.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w100,
                          height: 0,
                        ),
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0).h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 272.74.w,
                      height: 130.26.h,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/ag_img1.png"),
                              fit: BoxFit.cover)),
                      child: const StackItem(),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0x2BBFBFBF),
                          borderRadius: BorderRadius.circular(16.r)),
                      width: 272.74.w,
                      height: 130.26.h,
                      child: const StackItem(isLower: true),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      width: 272.74.w,
                      height: 130.h,
                      decoration: BoxDecoration(
                          color: const Color(0x2BBFBFBF),
                          borderRadius: BorderRadius.circular(16.r)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: 30.0.w, left: 10.w, top: 10.h),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 59.03,
                              height: 23.41,
                              child: Text(
                                '00h00',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.18,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w800,
                                  height: 0,
                                ),
                              ),
                            ),
                            Icon(Icons.more_horiz)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class StackItem extends StatelessWidget {
  final bool? isLower;
  const StackItem({super.key, this.isLower});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 13.w,
          top: 49.69.h,
          child: Container(
            width: 18.32.w,
            height: 18.32.h,
            decoration: ShapeDecoration(
              color: isLower != null ? const Color(0xffD9D9D9) : Colors.white,
              shape: const StarBorder(
                points: 5,
                innerRadiusRatio: 0.38,
                pointRounding: 0,
                valleyRounding: 0,
                rotation: 0,
                squash: 0,
              ),
            ),
          ),
        ),
        Positioned(
          right: 30.86.w,
          top: 49.71.h,
          child: SizedBox(
            width: 22.39,
            height: 22.39,
            child: Icon(Icons.call,
                color: isLower != null ? Colors.black : Colors.white),
          ),
        ),
        Positioned(
          right: 20.59.w,
          top: 10.h,
          child: SizedBox(
            width: 44.78.w,
            height: 24.42.h,
            child: isLower != null
                ? const Icon(Icons.more_horiz)
                : const Text(
                    '500 / H\n700 / T',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w800,
                      height: 0,
                    ),
                  ),
          ),
        ),
        Positioned(
          left: 10.w,
          top: 10.h,
          child: SizedBox(
            width: 131.28.w,
            height: 24.42.h,
            child: Text(
              isLower != null ? "00h00" : 'Menuisier / 12h30 - (3)',
              style: TextStyle(
                color: isLower != null ? Colors.black : Colors.white,
                fontSize: 10.18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w800,
                height: 0,
              ),
            ),
          ),
        ),
        Positioned(
          left: 216.77.w,
          top: 90.38.h,
          child: SizedBox(
            width: 33.58,
            height: 28.50,
            child: Image.asset("assets/images/hand.png",
                color: isLower != null ? null : Colors.white),
          ),
        ),
        Positioned(
            left: 10.35.w,
            top: 90.75.h,
            child: Icon(Icons.location_on,
                color: isLower != null ? Colors.black : Colors.white)),
        Positioned(
          left: 30.35.w,
          top: 110.75.h,
          child: SizedBox(
            width: 91.59.w,
            child: Text(
              'Sicogi - Abobo',
              style: TextStyle(
                color: isLower != null ? Colors.black : Colors.white,
                fontSize: 11.19,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w800,
                height: 0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
