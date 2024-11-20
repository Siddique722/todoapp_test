import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goldapp/gold-app-screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // automatically call
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(
      seconds: 2
    ),(){
      // navigation
     // Navigator.push(context, MaterialPageRoute(builder: (context)=>GoldAppScreen()));
      Get.to(()=>GoldAppScreen());

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(

          child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Image(image: AssetImage('lib/assets/user2.png'),height: 100, ),
          Text('Gold App')
        ],
      ))
    );
  }
}
