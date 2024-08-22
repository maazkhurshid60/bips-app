import 'package:bips_app/app/constants/app_colors.dart';
import 'package:bips_app/app/constants/app_text_style.dart';
import 'package:bips_app/app/modules/home/controllers/home_controller.dart';
import 'package:bips_app/app/modules/home/views/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class NotifcationView extends GetView<HomeController> {
  const NotifcationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
          child: Column(
            children: [
              Icon(Icons.location_on_sharp, size: 31.h),
              Text(
                '4 km',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                width: 396.21.w,
                height: 45.53.h,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 2.32, color: Color(0xFFBFBFBF)),
                    borderRadius: BorderRadius.circular(30.21),
                  ),
                ),
                child: CupertinoSearchTextField(
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 15.0.w),
                    child: Icon(Icons.search, size: 22.h, color: Colors.black),
                  ),
                  placeholder: "De qui avez-vous besoin?",
                  style: TextStyle(fontSize: 14.sp, color: Color(0xffBFBFBF)),
                  backgroundColor: Colors.transparent,
                  padding: EdgeInsets.only(left: 20),
                ),
              ),
              SizedBox(height: 24.h),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '5 juin, 2024',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              for (int i = 0; i < notificationItem.length; i++) ...{
                CustomNotificationRow(
                  t1: "${i + 1}",
                  t2: notificationItem[i].t2,
                  t3: notificationItem[i].t3,
                  t4: notificationItem[i].t4,
                ),
                if (i != notificationItem.length - 1) SizedBox(height: 33.h),
              },
              SizedBox(height: 20.h),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '4 juin, 2024',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              const Spacer(),
              BackScreen(controller: controller),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomNotificationRow extends StatelessWidget {
  const CustomNotificationRow({
    super.key,
    this.t1,
    this.t2,
    this.t3,
    this.t4,
  });
  final String? t1;
  final String? t2;
  final String? t3;
  final String? t4;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 47.h,
      padding: EdgeInsets.only(
        left: 20.w,
        right: 15.w,
      ),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.56, color: Color(0xFFBFBFBF)),
          borderRadius: BorderRadius.circular(6.98).r,
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 20.h,
            width: 25.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/noti.png"),
                    fit: BoxFit.fill)),
            child: Text(
              '$t1',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 11.sp,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w900,
                height: 0,
              ),
            ),
          ),
          SizedBox(width: 10.w),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$t2',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '$t3',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w100,
                  ),
                ),
                Text(
                  '$t4',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.sp,
                    fontFamily: 'Inter',
                    height: 0,
                    fontWeight: FontWeight.w100,
                  ),
                )
              ]),
          Spacer(),
          Text("---")
        ],
      ),
    );
  }
}

List<NotifcaitionDetails> notificationItem = [
  NotifcaitionDetails(
      t2: "Marc.K / ebeniste",
      t3: "Propose ses services a 700/H",
      t4: "12:11",
      t1: "B"),
  NotifcaitionDetails(
      t1: "1",
      t2: "Jean. P / peintres",
      t3: "a été ajouté à votre panier",
      t4: "11:17"),
  NotifcaitionDetails(
    t1: "2",
    t2: "Olivier. N / peintre",
    t3: "a été ajouté à votre panier",
    t4: "11:14",
  ),
  NotifcaitionDetails(
      t1: "B",
      t2: "Julie. O / vaiselle",
      t3: "offre 10% de réductiEoxnerscuicrese",
      t4: "09:25"),
];

class NotifcaitionDetails {
  String? t1;
  String? t2;
  String? t3;
  String? t4;

  NotifcaitionDetails({
    this.t1,
    this.t2,
    this.t3,
    this.t4,
  });
}
