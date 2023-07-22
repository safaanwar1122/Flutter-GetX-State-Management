import 'package:flutter/material.dart';
import 'package:flutter_getx_playlist/screen_one.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height*1;
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorialsl'),
      ),
      body: Column(
        children: [
          Container(
           //height: MediaQuery.of(context).size.height*.4,
            height: Get.height*.4,
            width: Get.width*.8,
            color: Colors.red,
            child: Center(
              child: Text('Center'),
            ),
          ),

          Container(
            //height: MediaQuery.of(context).size.height*.4,
            height: Get.height*.1,
            width: Get.width*.8,
            color: Colors.green,
            child: Center(
              child: Text('Center'),
            ),
          ),
        ],
      ),
    );
  }
}
