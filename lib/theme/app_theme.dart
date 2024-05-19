import 'package:chat/core/constant/colors_app.dart';
import 'package:flutter/material.dart';

ThemeData appTheme (){
  return ThemeData(
    fontFamily: 'fontm',
    primaryColor: ColorsApp.premary,
    textTheme: TextTheme(
      
      titleLarge: TextStyle( fontSize: 20 , color: ColorsApp.black , fontFamily:  'fontb' ,) ,
      titleSmall: TextStyle( fontSize: 14 , color: ColorsApp.white , fontFamily:  'fontb' ,) ,
      bodyMedium: TextStyle( fontSize: 12 , color: ColorsApp.black , fontFamily:  'fontb' ,) ,
      bodySmall: TextStyle( fontSize: 12 , color: ColorsApp.black , fontFamily:  'fontm' ,) ,
    )
  ) ;
}