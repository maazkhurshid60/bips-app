import 'package:bips_app/app/modules/Accounts/widgets/feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompetenceView extends StatelessWidget {
  const CompetenceView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 50.w,
              alignment: Alignment.center,
              height: 20.h,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5.r)),
              child: Text(
                "Tâche",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 9.sp),
              ),
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: Container(
                width: 347.03.w,
                height: 533.27.h,
                padding: EdgeInsets.all(10.h),
                decoration: BoxDecoration(
                    color: const Color(0x11444444),
                    borderRadius: BorderRadius.circular(20.r)),
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      if (index % 2 == 0) {
                        return const account_competence_feature();
                      } else {
                        return const account_competence_feature(isRight: true);
                      }
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 3.h);
                    },
                    itemCount: 15),
              ),
            ),
          ],
        ));
  }
}
