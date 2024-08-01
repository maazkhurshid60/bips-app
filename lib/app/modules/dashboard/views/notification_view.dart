import 'package:bips_app/app/constants/app_text_style.dart';
import 'package:bips_app/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:bips_app/app/modules/dashboard/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NotifcationView extends GetView<DashboardController> {
  const NotifcationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      child: Column(
        children: [
          SizedBox(height: 30.h),
          Image.asset("assets/images/cart.png", height: 70.h),
          SizedBox(height: 30.h),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("5 Juin, 2024", style: AppTextStyle.extraMediumbold)),
          SizedBox(height: 10.h),
         Expanded(flex: 10,child: ListView.separated(itemBuilder:(context, index) {
           return NotifcationRow( t1: notificationItem[index].t1,
            t2: notificationItem[index].t2,
           t3: notificationItem[index].t3,
          t4: notificationItem[index].t4);
         }, separatorBuilder:(context, index) {
           return SizedBox(height: 10.h);
         }, itemCount: notificationItem.length)),
          SizedBox(height: 10.h),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("4 Juin, 2024", style: AppTextStyle.extraMediumbold)),
          const Spacer(),
          BackScreen(controller: controller),
        ],
      ),
    );
  }
}

class NotifcationRow extends StatelessWidget {
  const NotifcationRow({
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
      height: 80.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: Colors.brown)),
      child: Row(
        children: [
          Stack(
            children: [
              Image.asset("assets/images/mbox.png", height: 50.h, width: 50.w),
              Positioned(
                top: 12.h,
                left: 17.h,
                child: Text(t1 ?? 'B',
                    style:
                        AppTextStyle.mediumbold.copyWith(color: Colors.white)),
              ),
            ],
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                  fit: BoxFit.contain,
                  child: Text(t2 ?? 'Marc.k / ebeniste',
                      style: AppTextStyle.mediumbold)),
              FittedBox(
                fit: BoxFit.contain,
                child: Text(t3 ?? 'Propose ses services a 700/H',
                    style: AppTextStyle.smallLight),
              ),
              FittedBox(
                  fit: BoxFit.contain,
                  child: Text(t4 ?? '11:21', style: AppTextStyle.smallLight))
            ],
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(bottom: 40.0),
            child: Icon(Icons.more_horiz),
          ),
          SizedBox(width: 20.h)
        ],
      ),
    );
  }
}

List<NotifcaitionDetails> notificationItem = [
  NotifcaitionDetails(t2: "Marc.K / ebeniste", t3: "Propose ses services a 700/H", t4: "12:11", t1: "B"),
  NotifcaitionDetails(
      t1: "1",
      t2: "Jean. P / peintres",
      t3: "a été ajouté à votre panier",
      t4: "11:17"),
  NotifcaitionDetails( t1: "2",
            t2: "Olivier. N / peintre",
            t3: "a été ajouté à votre panier",
            t4: "11:14",),
  NotifcaitionDetails( t1: "B",
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
