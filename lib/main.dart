import 'package:chat/core/locallzition/language.dart';
import 'package:chat/core/locallzition/language_co.dart';
import 'package:chat/core/services/myservices.dart';
import 'package:chat/theme/app_theme.dart';
import 'package:chat/view/screen/chatpage.dart';
import 'package:chat/view/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/screen/chose_languge.dart';

void main() async {
await startServices() ;
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final LanguageCoIm languageCoIm = Get.put(LanguageCoIm());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Ask Najm Assistant", 
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      translations: Language(),
      locale: languageCoIm.lang,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => SplashScreen()),
        GetPage(name: '/chatpage', page: () =>  Chatpage(), transition: Transition.size, transitionDuration: const Duration(milliseconds: 500)),
        GetPage(name: '/choselang', page: () => const ChoseLanguge(), transition: Transition.fadeIn, transitionDuration: const Duration(milliseconds: 500)),
      ],
    ); 
  }
}
/* 

*/ 
