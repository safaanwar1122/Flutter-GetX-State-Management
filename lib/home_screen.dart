import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_getx_playlist/counter_controller.dart';
import 'package:flutter_getx_playlist/favourite_controller.dart';
import 'package:flutter_getx_playlist/screen_one.dart';
import 'package:flutter_getx_playlist/slider_example.dart';
import 'package:flutter_getx_playlist/switch_example.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FavouriteController controller = Get.put(FavouriteController());

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
        body: ListView.builder(
            itemCount: controller.fruitList.length,
            itemBuilder: (context, index) {
              return Card(
                  child: ListTile(
                onTap: () {
                  if (controller.tempFruitList
                      .contains(controller.fruitList[index].toString())) {
                    controller.removeFromFavourite(
                        controller.fruitList[index].toString());
                  } else {
                    controller
                        .addToFavourite(controller.fruitList[index].toString());
                  }
                },
                title: Text(controller.fruitList[index].toString()),
                trailing: Obx(
                  () => Icon(
                    Icons.favorite,
                    color: controller.tempFruitList
                            .contains(controller.fruitList[index].toString())
                        ? Colors.red
                        : Colors.white,
                  ),
                ),
              ));
            }));
  }
}
