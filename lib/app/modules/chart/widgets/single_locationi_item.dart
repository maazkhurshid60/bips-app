import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingleLocationItem extends StatelessWidget {
  const SingleLocationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 63.h,
        padding: EdgeInsets.only(left: 10.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          color: const Color(0x2BBFBFBF),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 50.w),
              child: const Icon(Icons.location_on_sharp),
            ),
            SizedBox(
              width: double.infinity,
              height: 21.37.h,
              child: Text(
                'Cocody -  Angré ....................................... 1500 / heure',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w300,
                  height: 0,
                ),
              ),
            )
          ],
        ));
  }
}
