import 'package:bips_app/app/modules/chart/widgets/chart_star_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChartPageViewItemOne extends StatelessWidget {
  const ChartPageViewItemOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 30.0.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const StarWidget(img: "star2"),
          SizedBox(height: 15.h),
          const StarWidget(img: "star1"),
          SizedBox(height: 15.h),
          const StarWidget(img: "star2"),
          SizedBox(height: 15.h),
          const StarWidget(img: "star3"),
          SizedBox(height: 15.h),
          const StarWidget(img: "star2"),
          SizedBox(height: 15.h),
          const StarWidget(img: "star3"),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(backgroundColor: Colors.black, radius: 5.r),
              SizedBox(width: 5.w),
              CircleAvatar(backgroundColor: Colors.black, radius: 3.r),
            ],
          )
        ],
      ),
    );
  }
}
