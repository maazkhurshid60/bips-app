import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StarWidget extends StatelessWidget {
  const StarWidget({super.key, this.txt, this.img});

  final String? txt;
  final String? img;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        height: 63.h,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.topRight,
                child: Image.asset("assets/images/${img ?? "star1"}.png")),
            SizedBox(
              width: 232.03.w,
              height: 21.37.h,
              child: Opacity(
                opacity: 0.30,
                child: Padding(
                  padding: EdgeInsets.only(right: 10.h),
                  child: Text(
                    txt ?? 'Bon service, professionnel et bon prix',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.21.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0.2,
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
