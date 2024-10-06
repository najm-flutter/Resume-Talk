import 'package:chat/controller/splash_screen_co.dart';
import 'package:chat/core/constant/colors_app.dart';
import 'package:chat/core/constant/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  final SplashScreenCoIm splashScreenCoIm = Get.put(SplashScreenCoIm());
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: ColorsApp.white,
      height: context.height,
      width: context.width,

      ///  المكونات///[
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.maxFinite,
          ),
          const Spacer(),

          ///الصورة//{
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: const <BoxShadow>[BoxShadow(color: Color.fromARGB(47, 0, 0, 0), blurRadius: 7, offset: Offset(0, 3))],
                image: DecorationImage(fit: BoxFit.contain, image: AssetImage(ImageAssets.logo))),
          ),

          ///الصورة//}
          ///
          const SizedBox(
            height: 10,
          ),

          ///النص//{
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: Text(
              '5'.tr,
              style: TextStyle(fontFamily: 'fontb', fontSize: 18, height: 0, color: ColorsApp.black),
            ),
          ),

          ///النص//}
          ///
          ///الوصف//{
          Container(
            width: 154,
            alignment: Alignment.center,
            child: Text(
              '4'.tr,
              style: TextStyle(fontSize: 14, color: ColorsApp.black, fontFamily: 'fontm'),
              textAlign: TextAlign.center,
            ),
          ),

          ///الوصف//}
          const Spacer(),
          ////حقوق الطبع والنشر///{
          Container(
            margin: const EdgeInsets.only(bottom: 3),
            alignment: Alignment.center,
            child: Text(
              '@2024-2025',
              style: TextStyle(
                fontSize: 12,
                color: ColorsApp.premary.withValues(alpha: 0.5),
              ),
              textAlign: TextAlign.center,
            ),
          ),

          ///}
        ],
      ),

      ///  المكونات///]
    ));
  }
}
