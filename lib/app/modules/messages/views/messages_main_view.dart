import 'package:bips_app/app/modules/chart/widgets/chart_header.dart';
import 'package:bips_app/app/modules/home/controllers/home_controller.dart';
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
      height: 40.h,
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
            height: 35.h,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 20,
                  child: SizedBox(
                    width: 116,
                    child: Text(
                      messageModel.name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 53,
                  top: 0,
                  child: SizedBox(
                    width: 104,
                    height: 21,
                    child: Text(
                      messageModel.message,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 11.19,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w100,
                        height: 0,
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
            style: const TextStyle(
              color: Colors.black,
              fontSize: 11.19,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 0,
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
                  const chartHeader(),
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
                  BackScreen(controller: Get.find<HomeController>()),
                  SizedBox(height: 10.h),
                ],
              ))),
    );
  }
}
