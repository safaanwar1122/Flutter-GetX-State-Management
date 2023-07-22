import 'package:flutter/material.dart';
import 'package:flutter_getx_playlist/screen_one.dart';
import 'package:flutter_getx_playlist/screen_two.dart';
import 'package:get/get.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

       primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      getPages: [
        GetPage(name: '/',page: ()=>HomeScreen()),
        GetPage(name: '/screenOne',page: ()=>ScreenOne()),
        GetPage(name: '/screenTwo',page: ()=>ScreenTwo()),

      ],
    );
  }
}