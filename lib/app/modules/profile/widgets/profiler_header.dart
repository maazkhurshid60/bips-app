import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilerHeader extends StatelessWidget {
  const ProfilerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 47.h,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border:
                Border.all(width: 2, color: const Color(0xFFBFBFBF)),
            borderRadius: BorderRadius.circular(6.71.w)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 45, width: 20),
            Text(
              "Bip’S",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.43.sp,
                fontFamily: 'times',
                fontWeight: FontWeight.w400,
              ),
            ),
            Icon(Icons.lock, size: 35.h)
          ],
        ));
  }
}
