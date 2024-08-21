import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextInputField extends StatelessWidget {
  final TextEditingController? controller;

  final String? hintText;
  const CustomTextInputField({super.key, this.hintText, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 47.h,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(width: 1.50, color: const Color(0xFFBFBFBF)),
          borderRadius: BorderRadius.circular(6.71),
        ),
        child: TextFormField(
          controller: controller,
          keyboardType: hintText == null ? null : TextInputType.number,
          decoration: InputDecoration(
              border: const OutlineInputBorder(borderSide: BorderSide.none),
              hintStyle: TextStyle(
                color: const Color(0xFFBFBFBF),
                fontSize: 16.63.sp,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w300,
              ),
              hintText: hintText ??
                  "Nom et Prénom /Nom de l’entreprise....................."),
        ));
  }
}