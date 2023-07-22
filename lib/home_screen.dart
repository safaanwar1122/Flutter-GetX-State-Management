import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_getx_playlist/counter_controller.dart';
import 'package:flutter_getx_playlist/screen_one.dart';
import 'package:flutter_getx_playlist/slider_example.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //dependency injection
  SliderExampleController sliderExampleController=Get.put(SliderExampleController());


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
        title: Text('GetX Tutorialsl'),
      ),
      body:Column(
        children: [
          Obx(
          ()=> Container(
              height: 200,
              width: 200,
              color: Colors.red.withOpacity(sliderExampleController.opacit.value),

            ),
          ),
          Obx(
          ()=> Slider(value: sliderExampleController.opacit.value, onChanged: (value){
            sliderExampleController.setOpacity(value);

            }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
      ),
    );
  }
}
