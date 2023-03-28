import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mony_ui_youtube/app/shared/theme.dart';

class OnBoardingWidgets extends StatelessWidget {
  final String? image;
  final String? title;
  final String? subtitle;
  const OnBoardingWidgets({this.image, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      child: Column(
        children: [
          Container(
            height: Get.height * 0.65,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/${image}'),
                scale: 1.75,
              ),
            ),
          ),
          Container(
            height: Get.height * 0.35,
            width: Get.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${title}',
                  style: semibold.copyWith(fontSize: 18),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  '${subtitle}',
                  style: regular.copyWith(
                    fontSize: 12,
                    color: grey,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
