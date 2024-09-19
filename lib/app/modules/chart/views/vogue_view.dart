import 'package:bips_app/app/modules/chart/widgets/single_locationi_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VegueView extends StatelessWidget {
  const VegueView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 60.w,
              alignment: Alignment.center,
              height: 20.h,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5.r)),
              child: Text(
                "Gardienne",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 9.sp),
              ),
            ),
            const Text(
              '5 juin, 2024',
              style: TextStyle(
                color: Colors.black,
                fontSize: 11.19,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        const SingleLocationItem(),
        SizedBox(height: 15.h),
        const SingleLocationItem(),
        SizedBox(height: 15.h),
        const SingleLocationItem(),
        SizedBox(height: 15.h),
        const SingleLocationItem(),
        SizedBox(height: 15.h),
        const SingleLocationItem(),
        SizedBox(height: 15.h),
      ],
    );
  }
}
