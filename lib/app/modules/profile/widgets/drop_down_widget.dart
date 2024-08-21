import 'package:bips_app/app/constants/app_text_style.dart';
import 'package:bips_app/app/modules/profile/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropDownWidget extends StatefulWidget {
  final ProfileController controller;

  const DropDownWidget({
    super.key,
    required this.controller,
  });

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        padding: EdgeInsets.symmetric(horizontal: 5.h),
        alignment: Alignment.center,
        isExpanded: true,
        isDense: true,
        onChanged: (v) {
          setState(() {
            widget.controller.selectedService = v!;
          });
        },
        style: AppTextStyle.otherTextStyle.copyWith(fontSize: 14.sp),
        icon: const Visibility(child: Icon(Icons.arrow_drop_down)),
        hint: Text(
          widget.controller.selectedService,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12.sp,
            fontFamily: 'Avenir',
            fontWeight: FontWeight.w300,
          ),
        ),
        value: widget.controller.selectedService,
        items: widget.controller.services
            .map((String e) => DropdownMenuItem(
                value: e, child: Text(e, style: AppTextStyle.otherTextStyle)))
            .toList(),
      ),
    );
  }
}
