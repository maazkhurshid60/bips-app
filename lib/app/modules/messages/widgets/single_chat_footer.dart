import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingleChatFooter extends StatelessWidget {
  const SingleChatFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382.w,
      height: 44.h,
      decoration: ShapeDecoration(
        color: const Color(0x47BFBFBF),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1.02, color: Color(0x00BFBFBF)),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          getSvg("smilee"),
          getSvg("doc"),
          Expanded(
              child: Container(
            width: 228.w,
            height: 27.h,
            alignment: Alignment.center,
            decoration: ShapeDecoration(
              color: const Color(0x2BBFBFBF),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1.02, color: Color(0xFFCBA95C)),
                borderRadius: BorderRadius.circular(12.21),
              ),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                hintText: "Aa...........................",
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          )),
          SizedBox(width: 5.w),
          getSvg("cam"),
          getSvg("mic")
        ],
      ),
    );
  }

  Image getSvg(String? name) =>
      Image.asset("assets/images/${name ?? "smilee"}.png", height: 31.h);
}
