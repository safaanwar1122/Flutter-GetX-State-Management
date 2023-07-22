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
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX , home screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                //Get.to(ScreenOne(name: 'Safa Anwar',));
                Get.toNamed('/screenOne',arguments:
                [
                  'Safa Anwar',
                  'I am software engineering student',
                  '3rd',
                ]
                );
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ScreenOne()),
                // );
              },
              child: Center(child: Text('Go to next screen '))),
        ],
      ),
    );
  }
}
