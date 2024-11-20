// user design define in this class

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goldapp/state_management/counter_view/counter_controller.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // oop
  // class--> data members and member function
  //object
  /*
  class Test
  {
    int a=5;
    int b=6;
    void add()
    {
        int addition=a+b;
        print("addition=$addition");
    }
  }
  void main(){
  // crate an object of the class
  Test obj=new Test();
  obj.add();

  }
  * */
  @override
  CounterController obj = Get.put(CounterController());
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // obx just refresh its child widget only
            Obx(()=>Text(
              '${obj.count}',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),),
            FloatingActionButton(
              onPressed: () {
                print('-------------1');
                obj.increment();
              },
              child: Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                print('-------------1');
                obj.decrement();
              },
              child: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
