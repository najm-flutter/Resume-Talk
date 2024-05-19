import 'package:flutter/material.dart';

class ResponsaveLayout extends StatelessWidget {
  final Widget phone ;
  final Widget decktop ;
const ResponsaveLayout({ super.key, required this.phone, required this.decktop });

  @override
  Widget build(BuildContext context){
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 800) {
        return decktop;
      } else {
        return phone;
        
      }
    },);
  }
}