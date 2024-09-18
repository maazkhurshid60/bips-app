import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingleLocationItem extends StatelessWidget {
  const SingleLocationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 63.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 50.w),
              child: const Icon(Icons.location_on_sharp),
            ),
            SizedBox(
              width: 329.73.w,
              height: 21.37.h,
              child: const Text(
                'Cocody -  Angré ....................................... 1500 / heure',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.23,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w300,
                  height: 0,
                ),
              ),
            )
          ],
        ));
  }
}
