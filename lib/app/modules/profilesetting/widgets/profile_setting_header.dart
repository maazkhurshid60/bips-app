import 'package:bips_app/app/modules/Cashprice/views/cash_price_main_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileSettingHeader extends StatelessWidget {
  const ProfileSettingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Locationwidget(),
        Padding(
          padding: EdgeInsets.only(right: 41.w),
          child: Align(
              alignment: Alignment.topRight,
              child: Image.asset("assets/images/c_img1.png")),
        ),
        Container(
            width: 312.w,
            height: 45.h,
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            alignment: Alignment.centerLeft,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.black),
                label: Text(
                  'Que savez-vous faire ?',
                  style: TextStyle(
                      color: const Color(0xFF959595), fontSize: 13.sp),
                ))),
      ],
    );
  }
}
