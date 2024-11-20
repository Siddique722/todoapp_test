// in this screen, we definr the functionality of the buttons
// also variables define in this screen


import 'package:get/get.dart';

class CounterController extends GetxController
{

  // var--> varchar--> any data type
  var count=0.obs;// data member

  // function for increment
   void increment(){// member function
     print('---------2');
     count.value++;
   }

   void decrement(){
     count.value--;
   }
   void refresh(){
     count.value=0;
   }

}