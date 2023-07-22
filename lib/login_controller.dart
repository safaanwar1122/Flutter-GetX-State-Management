import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
RxBool loading=false.obs;
  void loginApi() async {
    loading.value=true;
   try{
     final response =
     //await update(Uri.parse('https://reqres.in/api/login'),
     //await put(Uri.parse('https://reqres.in/api/login'),
     //  await delete(Uri.parse('https://reqres.in/api/login'),
     //    await patch(Uri.parse('https://reqres.in/api/login'),
     //
     await post(Uri.parse('https://reqres.in/api/login'), body: {
       'email': emailController.value.text,
       'password':passwordController.value.text,
     },
     headers: {
       'authorization':'safa',
         }
     );
     var data = jsonDecode(response.body);
     print(response.statusCode);
     print(data);
     if (response.statusCode == 200) {
       loading.value=false;
       Get.snackbar('Login successful',data['error']);

     } else {
       loading.value=false;
       Get.snackbar('Login falied',data['error']);

     }

   }
   catch(e){
     loading.value=false;
     Get.snackbar('Exception',e.toString());
   }
  }
//raw data API in postman
  void rawDataApi() async {
    loading.value=true;
    try{
      Map newData={
        'email': emailController.value.text,
        'password':passwordController.value.text,
      };
      final response =

      await post(Uri.parse('https://reqres.in/api/login'), body:jsonEncode(newData),

      );
      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);
      if (response.statusCode == 200) {
        loading.value=false;
        Get.snackbar('Login successful',data['error']);

      } else {
        loading.value=false;
        Get.snackbar('Login falied',data['error']);

      }

    }
    catch(e){
      loading.value=false;
      Get.snackbar('Exception',e.toString());
    }
  }
}
