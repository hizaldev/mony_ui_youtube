import 'dart:ffi';

import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mony_ui_youtube/app/routes/app_pages.dart';
import 'package:mony_ui_youtube/app/shared/theme.dart';
import 'package:mony_ui_youtube/app/widgets/ButtonWidgets.dart';

import '../controllers/phonenumber_controller.dart';

class PhonenumberView extends GetView<PhonenumberController> {
  const PhonenumberView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: darkerBlack),
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter Your\nmobile number',
                    style: semibold.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Insert your phone number to continue',
                    style: regular.copyWith(
                      fontSize: 12,
                      color: grey,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Container(
                        width: Get.width * 0.2,
                        child: const DropDownTextField(
                          dropDownItemCount: 5,
                          searchShowCursor: false,
                          enableSearch: false,
                          textFieldDecoration: InputDecoration(hintText: '+62'),
                          dropDownList: [
                            DropDownValueModel(name: '+62', value: '+62'),
                            DropDownValueModel(name: '+63', value: '+63'),
                            DropDownValueModel(name: '+64', value: '+64'),
                            DropDownValueModel(name: '+64', value: '+64'),
                            DropDownValueModel(name: '+65', value: '+65'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Container(
                        width: Get.width * 0.60,
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1.15,
                              color: darkGrey,
                            ),
                          ),
                        ),
                        child: Obx(() => Text(
                              '${controller.textPhone.value}',
                              style: regular.copyWith(fontSize: 16),
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              alignment: const Alignment(0, 0.999),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      print('button continue tapped');
                      Get.offAllNamed(Routes.BOTTOMNAVIGATION);
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: ButtonWidgets(
                        label: 'Continue',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 39,
                  ),
                  Container(
                    height: Get.height * 0.40,
                    decoration: BoxDecoration(
                      color: background,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  onTap: () {
                                    print('number 1 tapped');
                                    controller.updateValue('1');
                                  },
                                  child: const ButtonNumberWidgets(
                                    number: '1',
                                  ),
                                ),
                              ),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  onTap: () {
                                    print('number 2 tapped');
                                    controller.updateValue('2');
                                  },
                                  child: const ButtonNumberWidgets(
                                    number: '2',
                                  ),
                                ),
                              ),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  onTap: () {
                                    print('number 3 tapped');
                                    controller.updateValue('3');
                                  },
                                  child: const ButtonNumberWidgets(
                                    number: '3',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  onTap: () {
                                    print('number 4 tapped');
                                    controller.updateValue('4');
                                  },
                                  child: const ButtonNumberWidgets(
                                    number: '4',
                                  ),
                                ),
                              ),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  onTap: () {
                                    print('number 5 tapped');
                                    controller.updateValue('5');
                                  },
                                  child: const ButtonNumberWidgets(
                                    number: '5',
                                  ),
                                ),
                              ),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  onTap: () {
                                    print('number 6 tapped');
                                    controller.updateValue('6');
                                  },
                                  child: const ButtonNumberWidgets(
                                    number: '6',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  onTap: () {
                                    print('number 7 tapped');
                                    controller.updateValue('7');
                                  },
                                  child: const ButtonNumberWidgets(
                                    number: '7',
                                  ),
                                ),
                              ),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  onTap: () {
                                    print('number 8 tapped');
                                    controller.updateValue('8');
                                  },
                                  child: const ButtonNumberWidgets(
                                    number: '8',
                                  ),
                                ),
                              ),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  onTap: () {
                                    print('number 9 tapped');
                                    controller.updateValue('9');
                                  },
                                  child: const ButtonNumberWidgets(
                                    number: '9',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  onTap: () {
                                    print('button arrow tapped');
                                  },
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    child: const Center(
                                      child: Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  onTap: () {
                                    print('0');
                                    controller.updateValue('0');
                                  },
                                  child: Container(
                                      height: 60,
                                      width: 60,
                                      child: const ButtonNumberWidgets(
                                        number: '0',
                                      )),
                                ),
                              ),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  onTap: () {
                                    print('button back tapped');
                                    controller.backSpace();
                                  },
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    child: const Center(
                                      child: Icon(
                                        Icons.backspace_outlined,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class ButtonNumberWidgets extends StatelessWidget {
  final String? number;
  const ButtonNumberWidgets({this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      child: Center(
        child: Text(
          '${number}',
          style: semibold.copyWith(fontSize: 18),
        ),
      ),
    );
  }
}
