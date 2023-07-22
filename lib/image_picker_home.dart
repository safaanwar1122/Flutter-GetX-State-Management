import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_getx_playlist/counter_controller.dart';
import 'package:flutter_getx_playlist/favourite_controller.dart';
import 'package:flutter_getx_playlist/screen_one.dart';
import 'package:flutter_getx_playlist/slider_example.dart';
import 'package:flutter_getx_playlist/switch_example.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'image_picker_controller.dart';

class ImagePickerHome extends StatefulWidget {
  const ImagePickerHome({Key? key}) : super(key: key);

  @override
  State<ImagePickerHome> createState() => _ImagePickerHomeState();
}

class _ImagePickerHomeState extends State<ImagePickerHome> {
  ImagePickerController ccontroller = Get.put(ImagePickerController());
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
        title: Text('GetX Image Picker'),
      ),
      body: Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                  backgroundImage: ccontroller.imagePath.isNotEmpty
                      ? FileImage(File(ccontroller.imagePath.toString()))
                      : null),
            ),
            TextButton(onPressed: () {
              ccontroller.getImage();
            }, child: Text('Pick image')),
          ],
        );
      }),
    );
  }
}
