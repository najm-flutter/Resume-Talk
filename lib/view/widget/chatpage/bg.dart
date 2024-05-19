import 'package:chat/core/constant/colors_app.dart';
import 'package:flutter/material.dart';

class Bg extends StatelessWidget {
  const Bg({super.key, required this.widget});
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          color: ColorsApp.white,
        ),
        child: widget);
  }
}
