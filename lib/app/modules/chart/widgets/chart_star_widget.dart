import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StarWidget extends StatelessWidget {
  final String? txt;

  final String? img;
  const StarWidget({super.key, this.txt, this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      height: 63.h,
      decoration: BoxDecoration(
          color: const Color(0x2BBFBFBF),
          borderRadius: BorderRadius.circular(25.r)),
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            right: 15.w,
            top: 0.h,
            child: SizedBox(
              width: 63.10.w,
              height: 36.64.h,
              child: Image.asset("assets/images/${img ?? "star1"}.png",
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
            left: 0.w,
            top: 31.55.h,
            child: SizedBox(
              width: 232.03.w,
              height: 21.37.h,
              child: Opacity(
                opacity: 0.30,
                child: Text(
                  txt ?? 'Bon service, professionnel et bon prix',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.21.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      // Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //     Align(
      //         alignment: Alignment.topRight,
      //         child: Image.asset("assets/images/${img ?? "star1"}.png")),
      //     SizedBox(
      //       width: 232.03.w,
      //       height: 21.37.h,
      //       child: Opacity(
      //         opacity: 0.30,
      //         child: Padding(
      //           padding: EdgeInsets.only(right: 10.h),
      //           child: Text(
      //             txt ?? 'Bon service, professionnel et bon prix',
      //             style: TextStyle(
      //               color: Colors.black,
      //               fontSize: 12.21.sp,
      //               fontFamily: 'Inter',
      //               fontWeight: FontWeight.w400,
      //               height: 0.2,
      //             ),
      //           ),
      //         ),
      //       ),
      //     )
      //   ],
      // )
    );
  }
}
