import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Item3 extends StatelessWidget {
  final int index;
  const Item3({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 140.w,
          alignment: Alignment.center,
          height: 20.h,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(5.r)),
          child: Text(
            "Structure de la maison",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 11.sp),
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          width: 352.12.w,
          height: 420.63.h,
          decoration: const BoxDecoration(color: Color(0x0F444444)),
        ),
        const Spacer(),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(backgroundColor: Colors.black, radius: 2.5),
              SizedBox(
                width: 4.w,
              ),
              const CircleAvatar(backgroundColor: Colors.black, radius: 2.5),
              SizedBox(
                width: 4.w,
              ),
              CircleAvatar(
                  backgroundColor: Colors.black, radius: index == 2 ? 5 : 2.5),
            ])
      ],
    );
  }
}
