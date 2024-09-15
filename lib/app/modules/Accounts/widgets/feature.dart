import 'package:bips_app/app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class account_competence_feature extends StatelessWidget {
  final bool? isRight;

  const account_competence_feature({super.key, this.isRight});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isRight == null ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        width: 167,
        height: 26,
        decoration: ShapeDecoration(
          color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.44),
          ),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Text('Reveiller  les enfants',
              style: TextStyle(
                color: Colors.white,
                fontSize: 11.19.sp,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              )),
          SizedBox(width: 7.w),
          CircleAvatar(
            backgroundColor: AppColors.golden,
            radius: 12.r,
            child: Icon(Icons.clear, color: Colors.white, size: 12.h),
          )
        ]),
      ),
    );
  }
}
