import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "package:get_storage/get_storage.dart" ;

 abstract class LanguageCo extends GetxController {
  choseLang(String language) ;
}
class LanguageCoIm extends LanguageCo {
  GetStorage getstorage = GetStorage();
  Locale? lang  ;
  @override
  void onInit() {
    super.onInit();
    lang = getstorage.read('lang') != null ? Locale(getstorage.read('lang'))  : Get.deviceLocale ;
  }

  @override
  choseLang(String language) {
    lang = Locale(language) ;
    getstorage.remove('lang') ;
    getstorage.write('lang', language) ;
    Get.offAllNamed('/chatpage') ;
    Get.updateLocale(lang!) ;
  }

}


