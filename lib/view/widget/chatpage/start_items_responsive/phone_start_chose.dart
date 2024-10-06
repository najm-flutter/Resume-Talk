import 'package:chat/controller/chat_page_co.dart';
import 'package:chat/core/constant/colors_app.dart';
import 'package:chat/data/data_source/static/static_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneStartChose extends GetView<ChatPageCoIm> {
  const PhoneStartChose({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        ...List.generate(
          StaticData.startItemsModel.length,
          (index) {
            StaticData()  ;
            return InkWell(
              hoverColor: ColorsApp.white,
              splashColor: ColorsApp.white,
              highlightColor: ColorsApp.white,
              onTap: () =>
                  controller.onsend("السؤال هو : ${StaticData.startItemsModel[index].body}", controller.typeBot),
              child: Container(
                margin: const EdgeInsets.only(left: 10, bottom: 10),
                padding: const EdgeInsets.all(3),
                width: 190,
                decoration: BoxDecoration(
                  color: ColorsApp.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: ColorsApp.greytow),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      StaticData.startItemsModel[index].title,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: ColorsApp.black.withValues(alpha:0.8)),
                    ),
                    Text(
                      StaticData.startItemsModel[index].body,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(color: ColorsApp.greytow),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
