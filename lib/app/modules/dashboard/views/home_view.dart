import 'package:bips_app/app/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.only(top: 40.h, left: 10.w, right: 10.w),
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(

          image: AssetImage("assets/images/bg.jpg"),
          fit: BoxFit.fitHeight
        )
      ),
      child:  Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.search, size: 20.h),
              Icon(Icons.location_on, size: 20.h),
              Icon(Icons.add_alert_sharp, size: 20.h),
            ],
          ),

         const Spacer(),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Container(
              margin: EdgeInsets.only(bottom: 20.h),
              height: 40.h,width: 50.w,decoration: BoxDecoration(
              color: Colors.black,
              borderRadius:BorderRadius.circular(10).r 
            ),),
            SizedBox(width: 5.w),
             Padding(
               padding:  EdgeInsets.only(top: 40.h),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Maria. K \nGardienne", style: AppTextStyle.mediumbold.copyWith(color: Colors.white)),
                  Text("***", style: AppTextStyle.mediumbold)
                ],
                           ),
             ),
             const Spacer(),
             Padding(
               padding:  EdgeInsets.only(bottom: 30.h),
               child: Column(children: [
                Image.asset("assets/images/box.png", height: 30.h,width: 30.w,),
                SizedBox(height: 5.h),
                 Text("Bona", style: AppTextStyle.smallbold),
                 SizedBox(height: 7.h),
                Image.asset("assets/images/hand.png", height: 30.h,width: 30.w,),
                SizedBox(height: 7.h),
                Image.asset("assets/images/cash.png", height: 30.h,width: 30.w,),
                SizedBox(height: 7.h),
                Image.asset("assets/images/pop.png", height: 30.h,width: 30.w,),
               
               ],),
             )
          ]),
           SizedBox(height: 20.h),
        ],
      ),
    );
  }
}