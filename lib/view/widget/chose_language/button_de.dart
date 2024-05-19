import 'package:chat/core/constant/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:uicons/uicons.dart';

class ButtonDe extends StatelessWidget {
  final String str ;
  final void Function()? onTap ;
  const ButtonDe({ super.key, required this.str, this.onTap });
 
  @override
  Widget build(BuildContext context){
    return InkWell(
      focusColor: Colors.white,
      hoverColor: Colors.white,
      splashColor: Colors.white,
      highlightColor: Colors.white,
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 50),
        width: double.maxFinite,
        height: 40,
        decoration: BoxDecoration(
          color: ColorsApp.premary ,
          borderRadius: BorderRadius.circular(15) ,
          boxShadow: <BoxShadow> [
            BoxShadow(color: ColorsApp.grey , blurRadius: 20 , offset:const Offset(0, 3))
          ]
        ),
        child: Row(
          textDirection: TextDirection.rtl,
          children: [
            Expanded(child: Container(
              alignment: Alignment.centerRight,
              margin:const EdgeInsets.only(right: 10),
              child: SizedBox(height: 25,width: 25 ,
            child: CircleAvatar( backgroundColor: ColorsApp.white,child: Icon(UIcons.regularRounded.angle_right , color: ColorsApp.premary, size: 15,),),),)) ,
            //
            Expanded(child: Center(child: Text(str , style: Theme.of(context).textTheme.titleSmall ,))),
            //
            const Expanded(child: SizedBox())
          ],
        ),
      ),
    );
  }
}