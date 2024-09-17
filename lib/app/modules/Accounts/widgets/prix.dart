import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrixView extends StatelessWidget {
  final Color? c;
  final int index;
  const PrixView({super.key, this.c, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.topRight,
            child: Icon(Icons.location_pin, size: 31.h)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 80.w,
              alignment: Alignment.center,
              height: 20.h,
              decoration: BoxDecoration(
                  color: c ?? Colors.black,
                  borderRadius: BorderRadius.circular(5.r)),
              child: Text(
                "Gardienne",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: c == null ? Colors.white : Colors.black,
                    fontSize: 11.sp),
              ),
            ),
            Text(
              'Marie. K',
              style: TextStyle(
                color: Colors.black,
                fontSize: 11.19.sp,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ],
        ),
        SizedBox(height: 37.h),
        Text(
          'Prix élevé   ..................................................................',
          style: TextStyle(
            color: Colors.black,
            fontSize: 11.19.sp,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        SizedBox(height: 31.h),
        Text(
          'Prix Moyen  ..................................................................',
          style: TextStyle(
            color: Colors.black,
            fontSize: 11.19.sp,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        SizedBox(height: 31.h),
        Text(
          'Prix Minimum   .............................................................',
          style: TextStyle(
            color: Colors.black,
            fontSize: 11.19.sp,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        SizedBox(height: 60.h),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 65.w,
            alignment: Alignment.center,
            height: 20.h,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(5.r)),
            child: Text(
              "Lessive",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 11.sp),
            ),
          ),
        ),
        SizedBox(height: 37.h),
        Text(
          'Prix élevé   ..................................................................',
          style: TextStyle(
            color: Colors.black,
            fontSize: 11.19.sp,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        SizedBox(height: 31.h),
        Text(
          'Prix Moyen  ..................................................................',
          style: TextStyle(
            color: Colors.black,
            fontSize: 11.19.sp,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        SizedBox(height: 31.h),
        Text(
          'Prix Minimum   .............................................................',
          style: TextStyle(
            color: Colors.black,
            fontSize: 11.19.sp,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        SizedBox(height: 40.h),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                  backgroundColor: Colors.black, radius: index == 0 ? 5 : 2.5),
              SizedBox(
                width: 4.w,
              ),
              CircleAvatar(
                  backgroundColor: Colors.black, radius: index == 1 ? 5 : 2.5),
              SizedBox(
                width: 4.w,
              ),
              CircleAvatar(
                  backgroundColor: Colors.black, radius: index == 2 ? 5 : 2.5),
            ])
      ],
    );
  }
}
