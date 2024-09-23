import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CharPageViewItemTwo extends StatelessWidget {
  const CharPageViewItemTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 60.w,
          alignment: Alignment.center,
          height: 20.h,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(5.r)),
          child: Text(
            "Martine. O",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 9.sp),
          ),
        ),
        SizedBox(height: 5.h),
        const chart_card(),
        SizedBox(height: 70.h),
        Container(
          width: 80.w,
          alignment: Alignment.center,
          height: 20.h,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(5.r)),
          child: Text(
            "Barthélémy. K",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 9.sp),
          ),
        ),
        SizedBox(height: 5.h),
        const chart_card(),
        SizedBox(height: 30.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(backgroundColor: Colors.black, radius: 3.r),
            SizedBox(width: 5.w),
            CircleAvatar(backgroundColor: Colors.black, radius: 4.r),
          ],
        )
      ],
    );
  }
}

class chart_card extends StatelessWidget {
  const chart_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 347.03.w,
      height: 158.76.h,
      decoration: BoxDecoration(
          color: const Color(0x14444444),
          borderRadius: BorderRadius.circular(20.r)),
      child: Stack(
        children: [
          Positioned(
            top: 6.h,
            left: 19.w,
            child: const Text(
              '5 juin, 2024',
              style: TextStyle(
                color: Colors.black,
                fontSize: 11.19,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w300,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 149.w,
            child: Image.asset(
              "assets/images/star3.png",
              width: 47.83.w,
              height: 25.44.h,
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: Image.asset(
                "assets/images/c_img5.png",
                height: 110.h,
                width: 130.w,
              ),
            ),
          ),
          Positioned(
            top: 46.h,
            left: 29.w,
            child: SizedBox(
              width: 159.78.w,
              child: const Text(
                'Aimée. B / Selmer (abobo) /\nfdgfhjkjklklkkml,m;l,;l,;,ll;,l,l;l\nfdcgfhjbnnkml;,l,;l,l,l\nfhgghjhjkh,jnkjlkjlkjlmmlkl\nghvhjhbjknjnkjknjnkmk\nhgvhbhnjnbjjknkjlk;klk;klk;\nhjbnkmknmklmkmlkmlk',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11.19,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w300,
                  height: 0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
