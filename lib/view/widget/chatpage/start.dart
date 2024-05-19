import 'package:chat/controller/chat_page_co.dart';
import 'package:chat/core/class/responsave_layout.dart';
import 'package:chat/core/constant/colors_app.dart';
import 'package:chat/core/constant/image_assets.dart';
import 'package:chat/view/widget/chatpage/start_items_responsive/descktop_start_chose.dart';
import 'package:chat/view/widget/chatpage/start_items_responsive/phone_start_chose.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Start extends GetView<ChatPageCoIm> {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      width: double.maxFinite,
      color: ColorsApp.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
            shape: BoxShape.circle,
                boxShadow: const <BoxShadow>[BoxShadow(color: Color.fromARGB(47, 0, 0, 0), blurRadius: 7, offset: Offset(0, 3))],
                image: DecorationImage(fit: BoxFit.contain, image: AssetImage(ImageAssets.logo))),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '18'.tr,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          const ResponsaveLayout(phone: PhoneStartChose(), decktop: DescktopStartChose()),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
