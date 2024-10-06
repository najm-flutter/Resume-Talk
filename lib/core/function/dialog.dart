import 'package:chat/controller/chat_page_co.dart';
import 'package:chat/core/constant/colors_app.dart';
import 'package:chat/data/data_source/static/static_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

ChatPageCoIm controller = Get.find();
dialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        actionsPadding: EdgeInsets.zero,
        alignment: Alignment.center,
        actionsAlignment: MainAxisAlignment.center,
        backgroundColor: ColorsApp.white,
        actions: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(color: ColorsApp.greythree, borderRadius: BorderRadius.circular(6)),
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(color: ColorsApp.white, borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TitleDialog(str: '11'.tr),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "10".tr,
                        style: TextStyle(fontSize: 14, color: ColorsApp.black, fontFamily: 'fontm'),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                                    padding: const EdgeInsets.all(3),

                  decoration: BoxDecoration(color: ColorsApp.white, borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TitleDialog(str: '9'.tr),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 40,
                        alignment: Alignment.center,
                        width: double.maxFinite,
                        
                        child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return ImageSocial(
                                image: StaticData.socialModel[index].image,
                                url: StaticData.socialModel[index].url,
                              );
                            },
                            separatorBuilder: (context, index) => const SizedBox(
                                  width: 10,
                                ),
                            itemCount: StaticData.socialModel.length),
                      ),
                    ],
                  ),
                ),
               
              ],
            ),
          )
        ],
      );
    },
  );
}

class TitleDialog extends StatelessWidget {
  final String str;
  const TitleDialog({super.key, required this.str});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
            width: 100,
            child: Divider(
              height: 1,
              color: ColorsApp.black,
            )),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          color: ColorsApp.white,
          child: Text(
            str,
            style: TextStyle(fontSize: 14, color: ColorsApp.black, fontFamily: 'fontb'),
          ),
        ),
      ],
    );
  }
}

class ImageSocial extends StatelessWidget {
  final String image;
  final String url;
  const ImageSocial({super.key, required this.image, required this.url});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => controller.openurl(url),
      child: Image.asset(
        image,
        height: 35,
        width: 35,
      ),
    );
  }
}
