import 'package:chat/controller/chat_page_co.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBg extends GetView<ChatPageCoIm> {
  final Widget widget;
  const BottomBg({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return GetX<ChatPageCoIm>(builder: (co) {
      return Container(
          padding: const EdgeInsets.all(5),
          width: double.maxFinite,
          margin: EdgeInsets.only(left: co.width.value / 20, right: co.width.value / 20, bottom: 20),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(25),
              boxShadow: const <BoxShadow>[BoxShadow(color: Color.fromARGB(44, 58, 58, 58), offset: Offset(0, 3), blurRadius: 10)]),
          child: widget);
    });
  }
}
