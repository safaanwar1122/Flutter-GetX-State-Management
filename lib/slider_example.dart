

import 'package:get/get.dart';

class SliderExampleController extends GetxController{
  RxDouble opacit=.4.obs;



  setOpacity(   double value){
 opacit.value=value;
  }

}
