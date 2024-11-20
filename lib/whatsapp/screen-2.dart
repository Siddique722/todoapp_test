import 'package:flutter/material.dart';


class ScreenTwo extends StatelessWidget {
  String title;
  String image;
   ScreenTwo({super.key,
   required this.title,
     required this.image

   });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: CircleAvatar(
          backgroundImage: AssetImage(image),
        ),
      ),
    );
  }
}
