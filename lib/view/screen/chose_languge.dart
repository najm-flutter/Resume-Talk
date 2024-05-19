import 'package:chat/core/locallzition/language_co.dart';
import 'package:chat/view/widget/chose_language/button_de.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChoseLanguge extends GetView<LanguageCoIm> {

  const ChoseLanguge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         const SizedBox(width: double.maxFinite,) ,
         //
        Text('1'.tr , style:  Theme.of(context).textTheme.titleLarge,) , 
        const SizedBox(height: 10,) ,
        //
        
        ButtonDe(str: '2'.tr, onTap: (){
          controller.choseLang("ar") ;
        }  ,) ,
       const SizedBox(height: 10,) ,
       //
        ButtonDe(str: '3'.tr, onTap: () {
          controller.choseLang("en") ;
        },) ,

      ],),);
  }
}













