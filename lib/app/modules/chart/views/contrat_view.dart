import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContratWidget extends StatelessWidget {
  const ContratWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 60.w,
          alignment: Alignment.center,
          height: 20.h,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(5.r)),
          child: Text(
            "Martine. O",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 9.sp),
          ),
        ),
        SizedBox(height: 5.h),
        Container(
          padding: EdgeInsets.only(left: 23.w, right: 10.w),
          width: 352.30.w,
          height: 60.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0x2BBFBFBF),
              borderRadius: BorderRadius.circular(25.r)),
          child: Text(
            'Lessiveuse -  0225 ......................................... 1500 fcfa',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12.sp,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w300,
              height: 0,
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          width: 352.30.w,
          height: 60.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0x2BBFBFBF),
              borderRadius: BorderRadius.circular(25.r)),
          child: Text(
            'Lessiveuse -  0225 ..................................... 1500 fcfa',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12.sp,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w300,
              height: 0,
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          width: 352.30.w,
          height: 60.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0x2BBFBFBF),
              borderRadius: BorderRadius.circular(25.r)),
          child: const Text(
            'Lessiveuse -  0225 ......................................... 1500 fcfa',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w300,
              height: 0,
            ),
          ),
        ),
        SizedBox(height: 18.h),
        Container(
          width: 60.w,
          alignment: Alignment.center,
          height: 20.h,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(5.r)),
          child: Text(
            "Martine. O",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 9.sp),
          ),
        ),
        SizedBox(height: 5.h),
        Container(
          padding: EdgeInsets.only(left: 23.w, right: 10.w),
          width: 352.30.w,
          height: 60.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0x2BBFBFBF),
              borderRadius: BorderRadius.circular(25.r)),
          child: Text(
            'Lessiveuse -  0225 ......................................... 1500 fcfa',
            style: TextStyle(
              color: Colors.black,
              fontSize: 11.sp,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w300,
              height: 0,
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          width: 352.30.w,
          height: 60.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0x2BBFBFBF),
              borderRadius: BorderRadius.circular(25.r)),
          child: const Text(
            'Lessiveuse -  0225 ......................................... 1500 fcfa',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w300,
              height: 0,
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          width: 352.30.w,
          height: 60.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0x2BBFBFBF),
              borderRadius: BorderRadius.circular(25.r)),
          child: const Text(
            'Lessiveuse -  0225 ......................................... 1500 fcfa',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w300,
              height: 0,
            ),
          ),
        )
      ],
    );
  }
}
