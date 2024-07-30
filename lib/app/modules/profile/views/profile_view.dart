import 'package:bips_app/app/constants/app_text_style.dart';
import 'package:bips_app/app/modules/profile/views/otp_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.h),
          child: Column(
            children: [
              Container(
                  height: 45.h,
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10).r,
                      border: Border.all(width: 2, color: Colors.black)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 45, width: 20),
                      Text(
                        "Bip’S",
                        style: AppTextStyle.largebold,
                      ),
                      Icon(Icons.lock, size: 35.h)
                    ],
                  )),
              SizedBox(height: 30.h),
              const CustomTextInputField(),
              SizedBox(height: 20.h),
              const CustomTextInputField(
                hintText:
                    "Mobile Money........................................",
              ),
              SizedBox(height: 20.h),
              Container(
                  height: 45.h,
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10).r,
                      border: Border.all(width: 1, color: Colors.black)),
                  child: Text(
                    "les termes et conditions",
                    style:
                        AppTextStyle.mediumLight,
                  )),
              SizedBox(height: 20.h),
              Container(
                  height: 45.h,
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10).r,
                      border: Border.all(width: 1, color: Colors.black)),
                  child: Text(
                    "les politiques sur la vie privée",
                    style:
                        AppTextStyle.mediumLight,
                  )),
              const Spacer(),
               GestureDetector(
                onTap: (){
                  try{
                    Get.to(()=> const OtpVerificationView());
                  }catch(e){
                    debugPrint(e.toString());
                  }
                },
                 child: CircleAvatar(
                  radius: 20.r,
                  backgroundColor: const Color.fromARGB(255, 201, 165, 7),
                  child:  Icon(Icons.arrow_forward, size: 25.h),),
               )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextInputField extends StatelessWidget {
  const CustomTextInputField({super.key, this.hintText, this.controller});

 final  TextEditingController? controller;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45.h,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        alignment: Alignment.center,
        decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(10).r,
            border: Border.all(width: 1, color: Colors.black)),
        child: TextFormField(
          controller: controller,
          keyboardType: hintText == null? null:TextInputType.number,
          decoration: InputDecoration(
              border: const OutlineInputBorder(borderSide: BorderSide.none),
              hintText:
                  hintText ?? "Nom et Prénom /Nom de l’entreprise........"),
        ));
  }
}
