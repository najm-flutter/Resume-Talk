import 'package:chat/controller/chat_page_co.dart';
import 'package:chat/core/constant/colors_app.dart';
import 'package:chat/core/function/dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uicons/uicons.dart';

class Appbardesing extends GetView<ChatPageCoIm> {
 const Appbardesing({ super.key});



  @override
  Widget build(BuildContext context){
    return Container(
      height: double.maxFinite,
      width: context.width,
      color: ColorsApp.white ,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        //////المكونات////[
        children: [
          ///
          ///icon drawer //{
          Container( margin: const EdgeInsets.only(left: 10), child: IconButton( icon : Icon(UIcons.regularRounded.comment_info , size: 28, color: const Color.fromARGB(255, 143, 143, 143),), onPressed: (){dialog(context) ;},)) ,
          const Spacer(),
          ///العنوان///{
           Text(
            '5'.tr,
            style: TextStyle(fontFamily: 'fontb', fontSize: 18, height:0 , color: ColorsApp.titlecolor),
          ),
          ///العنوان///}
         const Spacer(),
           ///الصورة//{
          Container(
            margin: const EdgeInsets.only(right: 10),
            height: 40,
            width: 40,
           
          ),
          ///الصورة//}
       
      ],
        //////المكونات////]
      ),
    );
  }
}