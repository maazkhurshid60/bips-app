import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileImageAndText extends StatelessWidget {
  const ProfileImageAndText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 91.w,
          height: 79.h,
          child: Stack(
            children: [
              SizedBox(
                width: 87.w,
                height: 79.h,
                child: Image.asset("assets/images/Photo.png"),
              ),
              Positioned(
                left: 57.w,
                bottom: 0.h,
                child: Container(
                  width: 34.w,
                  height: 28.h,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFD1B56D),
                    shape: OvalBorder(
                      side: BorderSide(width: 8, color: Color(0xFFCBA95C)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 14.h),
        Text(
          'Marie Kouamé',
          style: TextStyle(color: Colors.black, fontSize: 13.sp),
        ),
      ],
    );
  }
}
