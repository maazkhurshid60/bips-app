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
          width: 362.30,
          padding: EdgeInsets.only(left: 23.w, right: 10.w),
          alignment: Alignment.center,
          height: 68.18,
          decoration: const BoxDecoration(color: Color(0x14444444)),
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
        SizedBox(height: 40.h),
        const SizedBox(
          width: 329.73,
          height: 21.37,
          child: Text(
            'Lessiveuse -  0225 ......................................... 1500 fcfa',
            style: TextStyle(
              color: Colors.black,
              fontSize: 13.23,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w300,
              height: 0,
            ),
          ),
        ),
        SizedBox(height: 40.h),
        const SizedBox(
          width: 329.73,
          height: 21.37,
          child: Text(
            'Lessiveuse -  0225 ......................................... 1500 fcfa',
            style: TextStyle(
              color: Colors.black,
              fontSize: 13.23,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w300,
              height: 0,
            ),
          ),
        ),
        SizedBox(height: 40.h),
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
          width: 362.30,
          padding: EdgeInsets.only(left: 23.w, right: 10.w),
          alignment: Alignment.center,
          height: 68.18,
          decoration: const BoxDecoration(color: Color(0x14444444)),
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
        SizedBox(height: 40.h),
        const SizedBox(
          width: 329.73,
          height: 21.37,
          child: Text(
            'Lessiveuse -  0225 ......................................... 1500 fcfa',
            style: TextStyle(
              color: Colors.black,
              fontSize: 13.23,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w300,
              height: 0,
            ),
          ),
        ),
        SizedBox(height: 40.h),
        const SizedBox(
          width: 329.73,
          height: 21.37,
          child: Text(
            'Lessiveuse -  0225 ......................................... 1500 fcfa',
            style: TextStyle(
              color: Colors.black,
              fontSize: 13.23,
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
