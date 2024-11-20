import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:goldapp/whatsapp/screen-2.dart';


class ScreeenOne extends StatefulWidget {
  const ScreeenOne({super.key});

  @override
  State<ScreeenOne> createState() => _ScreeenOneState();
}

class _ScreeenOneState extends State<ScreeenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen-1'),
      )
      ,
      body: Column(children: [
        ListTile(
          onTap: (){
            Get.to(()=>ScreenTwo(
                title: 'User-1',
                image: 'lib/assets/user2.png'));
          },
          title: Text('User-1'),
          subtitle: Text('last sceen'),
          leading: CircleAvatar(
            backgroundImage: AssetImage('lib/assets/user2.png'),
          ),
        ),
        ListTile(
          onTap: (){
            Get.to(()=>ScreenTwo(
                title: 'User-2',
                image: 'lib/assets/user2.png'));
          },
          title: Text('User-2'),
          subtitle: Text('last sceen'),
          leading: CircleAvatar(
            backgroundImage: AssetImage('lib/assets/user2.png'),
          ),
        ),
      ],),
    );
  }
}
