import 'package:flutter/material.dart';
import 'package:uicons/uicons.dart';

class IconMoreOption extends StatelessWidget {
  final void Function()? onPressed ;
  const IconMoreOption({super.key ,  this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5, left: 5),
      child: IconButton(
        icon: Icon(UIcons.regularRounded.keyboard),
        onPressed: onPressed,
      ),
    );
  }
}
