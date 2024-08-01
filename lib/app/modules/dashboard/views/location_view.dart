import 'package:bips_app/app/constants/app_text_style.dart';
import 'package:bips_app/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:bips_app/app/modules/dashboard/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LocationView extends GetView<DashboardController> {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 20.h),
      child: Column(
        children: [
          SizedBox(height: 30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.search, size: 25.h),
              Icon(Icons.location_on, size: 25.h),
              Image.asset("assets/images/cart.png", height: 25.h, width: 40.w),
            ],
          ),
           Text("À.4 Km",style: AppTextStyle.smallbold),
           SizedBox(height: 20.h),
           SizedBox(height: 150.h,width: double.infinity, child: Image.asset("assets/images/kit.png"),),
           SizedBox(height: 20.h),
           
           const CustomTextFormField(
            
           ),
           SizedBox(height: 5.h),
           const CustomTextFormField(text: "Région ..............................................."),
           SizedBox(height: 5.h),
           const CustomTextFormField(text: "Ville ..................................................."),
           SizedBox(height: 5.h),
           const CustomTextFormField(
            text: "Commune .........................................."
           ),
           SizedBox(height: 5.h),
           const CustomTextFormField(
              text: "Quartier ............................................."
           ),
           SizedBox(height: 5.h),
           const CustomTextFormField( text: "Rue ...................................................."),
           const Spacer(),
           BackScreen(controller: controller)
        ],
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    this.text
  });
  final String? text;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 40.h,
    alignment: Alignment.center,
     decoration: BoxDecoration(
       border: Border.all(color: Colors.black, width: 1),
       borderRadius: BorderRadius.circular(10.r),
     
     ),
     child: TextFormField(
       decoration:  InputDecoration(
         border: const OutlineInputBorder(borderSide: BorderSide.none),
         hintText:text?? "Pays ...................................................",
         hintStyle: TextStyle(fontSize: 14.h)
       ),
     ),
    );
  }
}
