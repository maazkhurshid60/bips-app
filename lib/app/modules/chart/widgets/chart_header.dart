import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class chartHeader extends StatelessWidget {
  const chartHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 254.w,
            height: 24.h,
            child: TextFormField(
              cursorHeight: 15.h,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(borderSide: BorderSide.none),
                hintText: "Nbre d’étoile / Métier / Date / prix",
                hintStyle: TextStyle(
                  color: Color(0xFFD9D9D9),
                  fontSize: 14.25.sp,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            )),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom: 25.0.h),
          child: Image.asset("assets/images/c_img1.png"),
        )
      ],
    );
  }
}
