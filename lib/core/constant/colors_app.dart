import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class ColorsApp{
  static GetStorage getStorage  = GetStorage() ;
  static List colors = getStorage.read("colors") ;
   //الوان صفة ال main//{
   static Color premary = const Color(0xFF0000FF) ;
   static Color black = const Color(0xff000000);
   static Color white = const Color(0xffffffff);
  //الوان صفة ال main//{
  //الوان صفة ال chatpage//{
  static Color gradienttop = const Color.fromARGB(255, 114, 114, 255);
        static Color gradientdown = const Color.fromARGB(255, 0, 0, 158);
      static Color titlecolor = const Color.fromARGB(255, 42, 42, 94);
  /////الوان ال drawer//👇
  static Color grey =  Colors.grey.withOpacity(0.05);
  static Color greytow =  Colors.grey;
  static Color greythree =  const Color.fromARGB(255, 238, 241, 255);
  //الوان صفة ال chatpage//{ 
 


}