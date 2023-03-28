import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mony_ui_youtube/app/routes/app_pages.dart';
import 'package:mony_ui_youtube/app/shared/theme.dart';
import 'package:mony_ui_youtube/app/widgets/ButtonWidgets.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Your Account',
                  style: semibold.copyWith(
                    fontSize: 18,
                    color: darkerBlack,
                  ),
                ),
                Text(
                  'Create your account to start a journey',
                  style: regular.copyWith(
                    fontSize: 12,
                    color: grey,
                  ),
                )
              ],
            ),
          ),
          centerTitle: false,
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 221,
              width: 221,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/signup.png'),
                  scale: 1,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fullname',
                    style: semibold.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: Get.width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: lineStroke),
                        ),
                        child: TextField(
                          autocorrect: false,
                          style: regular.copyWith(
                            fontSize: 12,
                            color: darkGrey,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 10),
                            hintText: 'First Name',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.05,
                      ),
                      Container(
                        height: 40,
                        width: Get.width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: lineStroke,
                          ),
                        ),
                        child: TextField(
                          autocorrect: false,
                          style: regular.copyWith(
                            fontSize: 12,
                            color: darkGrey,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.fromLTRB(10, 0, 16, 10),
                            hintText: 'Last Name',
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Email',
                    style: semibold.copyWith(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: lineStroke),
                    ),
                    child: TextField(
                      autocorrect: false,
                      style: regular.copyWith(
                        fontSize: 12,
                        color: darkGrey,
                      ),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 10),
                        hintText: 'Enter Your Email',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Password',
                    style: semibold.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: lineStroke),
                    ),
                    child: TextField(
                      autocorrect: false,
                      obscureText: true,
                      style: regular.copyWith(
                        fontSize: 12,
                        color: darkGrey,
                      ),
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 16, 10),
                          hintText: 'Enter Your Password'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                      onTap: () {
                        print('button tapped');
                      },
                      child: const ButtonWidgets(
                        label: 'Create Account',
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have a account? ',
                        style: regular.copyWith(
                          fontSize: 12,
                          color: grey,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.offAllNamed(Routes.SIGNIN);
                          print('sign in tapped');
                        },
                        child: Text(
                          'Sign In',
                          style: regular.copyWith(
                            fontSize: 10,
                            color: purple,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
