import 'package:bips_app/app/modules/chart/widgets/chart_header.dart';
import 'package:bips_app/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:bips_app/app/modules/home/views/search_view.dart';
import 'package:bips_app/app/modules/messages/controller/messages_controller.dart';
import 'package:bips_app/app/modules/messages/model/message_model.dart';
import 'package:bips_app/app/modules/messages/views/single_chat_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MessageChatItem extends StatelessWidget {
  final MessageModel messageModel;

  const MessageChatItem({super.key, required this.messageModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 68.w,
            height: 37.h,
            decoration: ShapeDecoration(
              color: const Color(0x2BBFBFBF),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1.02, color: Color(0xFFCBA95C)),
                borderRadius: BorderRadius.circular(12.21),
              ),
            ),
          ),
          SizedBox(width: 13.w),
          SizedBox(
            width: 157.w,
            height: 50.h,
            child: Stack(
              children: [
                Positioned(
                  left: 0.w,
                  top: 20.h,
                  child: SizedBox(
                    width: 116.w,
                    child: Text(
                      messageModel.name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 53.w,
                  top: 0.h,
                  child: SizedBox(
                    width: 104.w,
                    height: 21.h,
                    child: Text(
                      messageModel.message,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11.19.sp,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            messageModel.date,
            style: TextStyle(
              color: Colors.black,
              fontSize: 11.19.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class MessagesMainView extends GetView<MessagesController> {
  const MessagesMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(child: Icon(Icons.location_on, size: 35.h)),
                  Text(
                    '4 km',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.25.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0.5,
                    ),
                  ),
                  const ChartHeader(),
                  SizedBox(height: 50.h),
                  Expanded(
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return GestureDetector(
                                onTap: () {
                                  Get.to(() => const SingleChatView());
                                  // Get.to(() => const ImagesAndKeynoardView());
                                },
                                child: MessageChatItem(
                                    messageModel: controller.chats[index]));
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 45.h);
                          },
                          itemCount: 7)),
                  SizedBox(height: 50.h),
                  BackScreen1(controller: Get.find<DashboardController>()),
                  SizedBox(height: 10.h),
                ],
              ))),
    );
  }
}
