import 'package:bips_app/app/constants/app_text_style.dart';
import 'package:bips_app/app/modules/dashboard/views/dashboard_view.dart';
import 'package:bips_app/app/modules/profile/controllers/profile_controller.dart';
import 'package:bips_app/app/modules/profile/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OtpVerificationView extends GetView<ProfileController> {
  const OtpVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0).h,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30.h),
              Container(
                  height: 50.h,
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10).r,
                      border: Border.all(width: 2, color: Colors.black)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 45.h, width: 20),
                      Text(
                        "Bip’S",
                        style: AppTextStyle.logeTextStyle.copyWith(fontSize: 35.h),
                      ),
                      Icon(Icons.lock, size: 35.h)
                    ],
                  )),
              SizedBox(height: 120.h),
              const CustomTextInputField(
                hintText:
                    "Insérer le code.....................................",
              ),
              SizedBox(height: 120.h),
              Container(
                height: 25.h,
                width: 220.w,
                alignment: Alignment.center,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: DropDownWidget(controller: controller),
              ),
              SizedBox(height: 10.h),
              Image.asset("assets/images/drpdown.jpg", height: 30.h),
              SizedBox(height: 80.h),
              Text("Mot de passe oublié",
                  style: AppTextStyle.otherTextStyle.copyWith(fontSize: 14.sp)),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  try {
                    Get.offAll(() => const DashboardView());
                  } catch (e) {
                    debugPrint(e.toString());
                  }
                },
                child: Image.asset("assets/images/tick1.png", height: 60.h,width: 60.w),
                
              )
            ],
          ),
        ),
      )),
    );
  }
}

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({
    super.key,
    required this.controller,
  });

  final ProfileController controller;

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        padding: EdgeInsets.symmetric(horizontal:  5.h),
      alignment: Alignment.center,
        isExpanded: true,
        isDense: true,
        
        onChanged: (v) {
          setState(() {
            widget.controller.selectedService = v!;
          });
        },
      style: AppTextStyle.otherTextStyle.copyWith(fontSize:  14.sp),
        icon: const Visibility(child: Icon(Icons.arrow_drop_down)),
        hint: Text(widget.controller.selectedService),
        value: widget.controller.selectedService,
        items: widget.controller.services
            .map((String e) => DropdownMenuItem(value: e, child: Text(e)))
            .toList(),
      ),
    );
  }
}
