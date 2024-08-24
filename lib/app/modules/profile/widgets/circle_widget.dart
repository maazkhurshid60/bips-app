import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleWidget extends StatelessWidget {
  const CircleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38.w,
      height: 35.h,
      decoration: const ShapeDecoration(
        color: Color(0xFFCBA95C),
        shape: OvalBorder(),
      ),
      child: const Icon(Icons.done, color: Colors.white),
    );
  }
}
