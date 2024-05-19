import 'package:chat/controller/chat_page_co.dart';
import 'package:chat/core/constant/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uicons/uicons.dart';

class ButtonSend extends GetView<ChatPageCoIm> {
  final bool isShow;
  const ButtonSend({super.key, required this.isShow});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isShow,
      child: Container(
        margin: const EdgeInsets.only(right: 5, left: 5),
        height: 35,
        width: 35,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: const <BoxShadow>[BoxShadow(color: Color.fromARGB(19, 58, 58, 58), offset: Offset(0, 0), blurRadius: 5)],
            gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [ColorsApp.gradienttop, ColorsApp.gradientdown])),
        child: Center(
          child: IconButton(
            icon: Icon(
              UIcons.regularRounded.paper_plane,
              size: 18,
              color: ColorsApp.white,
            ),
            onPressed: () {
              if (controller.textcntorol.text.isNotEmpty) {
                controller.onsend('السؤال هو : ${controller.question}', controller.typeBot);
                // controller.test();
              }
            },
          ),
        ),
      ),
    );
  }
}
