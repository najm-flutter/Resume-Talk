import 'package:chat/view/widget/chatpage/appbar.dart';
import 'package:chat/controller/chat_page_co.dart';
import 'package:chat/core/constant/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chat/core/constant/image_assets.dart';
import 'package:chat/view/widget/chatpage/bg.dart';
import 'package:chat/view/widget/chatpage/bottom_bg.dart';
import 'package:chat/view/widget/chatpage/button_send.dart';
import 'package:chat/view/widget/chatpage/desing_message.dart';
import 'package:chat/view/widget/chatpage/icon_more_option.dart';
import 'package:chat/view/widget/chatpage/loading.dart';
import 'package:chat/view/widget/chatpage/start.dart';
import 'package:chat/view/widget/chatpage/text_form_fild_cu.dart';

class Chatpage extends StatelessWidget {
  Chatpage({super.key});

  final ChatPageCoIm controller = Get.put(ChatPageCoIm());

  @override
  Widget build(BuildContext context) {
    controller.width.value = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1,
        actions: const [
          Appbardesing(
          )
        ],
      ),
      body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          color: ColorsApp.white,
          child: Container(
            color: ColorsApp.white,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                GetBuilder<ChatPageCoIm>(builder: (co) {
                  return co.isStart == false
                      ? Bg(
                          widget: SingleChildScrollView(
                          controller: controller.scrollController,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: co.massege.length,
                                  itemBuilder: (BuildContext context, int i) {
                                    return DesingMessage(
                                        type: co.massege[i].nameSender,
                                        message: co.massege[i].message,
                                        imageUser: ImageAssets.user,
                                        imageBot: ImageAssets.logo,
                                        nameUser: '6'.tr,
                                        nameBot: '32'.tr,
                                        index: i);
                                  }),
                              const SizedBox(
                                height: 70,
                              )
                            ],
                          ),
                        ))
                      : const Start();
                }),
                BottomBg(
                  widget: GetBuilder<ChatPageCoIm>(
                    builder: (co) => Row(
                      textDirection: TextDirection.ltr,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconMoreOption(
                          onPressed: () {
                            controller.gotohome();
                          },
                        ),
                        const TextFormFildCu(),
                        ButtonSend(
                          isShow: co.send,
                        ),
                        Loading(isShow: co.wait),
                      ],
                    ),
                  ),
                ),
              ],
              ////المكونات///]
            ),
          )),
    );
  }
}
