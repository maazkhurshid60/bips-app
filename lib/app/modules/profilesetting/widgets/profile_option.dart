import 'package:bips_app/app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProfileSettingOption extends StatelessWidget {
  final String? img, txt, base;
  final double? w;
  const ProfileSettingOption(
      {super.key, this.img, this.txt, this.base, this.w});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58.h,
      width: 354.w,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      decoration: BoxDecoration(
          color: const Color(0xffD9D9D9).withOpacity(0.18),
          border: img == null
              ? Border.all(color: AppColors.golden, width: 1)
              : null,
          boxShadow: img == null
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 4),
                    spreadRadius: 0,
                  )
                ]
              : null,
          borderRadius: BorderRadius.circular(20.r)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (img == null) ...{
              SvgPicture.asset("assets/svgs/dn5.svg"),
            } else ...{
              Image.asset("assets/images/${base ?? "profile_"}$img.png"),
            },
            SizedBox(width: w ?? 10.w),
            Text(
              txt ?? 'Profil',
              style: TextStyle(color: Colors.black, fontSize: 10.18.sp),
            ),
          ]),
    );
  }
}
