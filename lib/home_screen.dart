import 'package:flutter/material.dart';
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
        title: Text('GetX tutorials'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('GetX Dialog Alert'),
              subtitle: Text('GetX dialogue alert with with GetX'),
              onTap: () {
                Get.defaultDialog(
                  title: 'Delete chat',
                  titlePadding: EdgeInsets.all(20),
                  contentPadding: EdgeInsets.all(20),
                  //middleText: 'Are you sure you want to delete this chat?',
                  // textConfirm: 'Yes',
                  // textCancel: 'No',
                  confirm: TextButton(
                    onPressed: () {
                      // Navigator.pop(context);
                      Get.back();
                    },
                    child: Text('Ok'),
                  ),
                  cancel: TextButton(
                    onPressed: () {
                      // Navigator.pop(context);
                      Get.back();
                    },
                    child: Text('Cancel'),
                  ),
                  content: Column(
                    children: [
                      Text('Cancel'),
                      Text('Cancel'),
                      Text('Cancel'),
                      Text('Cancel'),
                    ],
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('GetX Bottom Sheet'),
              subtitle: Text('GetX dialogue alert with with GetX'),
              onTap: () {
                Get.bottomSheet(
                    Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.red,
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.light_mode),
                        title: Text('Light theme '),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());

                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.dark_mode),
                        title: Text('Dark theme '),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());

                        },
                      ),
                    ],
                  ),
                ));
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
