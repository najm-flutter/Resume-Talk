import 'package:chat/core/constant/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Loading extends StatelessWidget {
  final bool isShow;
  const Loading({super.key, required this.isShow});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isShow,
      child: SizedBox(
          child: LottieBuilder.asset(
            ImageAssets.waite,
            height: 40,
            fit: BoxFit.contain,
          )),
    );
  }
}
