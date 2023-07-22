import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_getx_playlist/counter_controller.dart';
import 'package:flutter_getx_playlist/favourite_controller.dart';
import 'package:flutter_getx_playlist/screen_one.dart';
import 'package:flutter_getx_playlist/slider_example.dart';
import 'package:flutter_getx_playlist/switch_example.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'login_controller.dart';

class LoginSignUPHomePage extends StatefulWidget {
  const LoginSignUPHomePage({Key? key}) : super(key: key);

  @override
  State<LoginSignUPHomePage> createState() => _LoginSignUPHomePageState();
}

class _LoginSignUPHomePageState extends State<LoginSignUPHomePage> {
  LoginController controller = Get.put(LoginController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX SignUP, Login APIs'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailController.value,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            TextFormField(
              controller: controller.passwordController.value,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Obx(() {
              return InkWell(
                onTap: () {
                  controller.loginApi();
                },
                child: controller.loading.value
                    ? CircularProgressIndicator()
                    : Container(
                        height: 45,
                        color: Colors.grey,
                        child: Center(
                          child: Text('Login'),
                        ),
                      ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
