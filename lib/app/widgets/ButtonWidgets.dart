import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mony_ui_youtube/app/shared/theme.dart';

class ButtonWidgets extends StatelessWidget {
  final String? label;
  const ButtonWidgets({this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: Get.width,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: purple,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        '${label}',
        style: semibold.copyWith(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}
