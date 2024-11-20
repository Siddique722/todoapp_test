import 'package:flutter/material.dart';


class ConatinaerClass extends StatelessWidget {
  const ConatinaerClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(
        height: 100,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(200),
            bottomLeft: Radius.circular(200),
            topRight: Radius.circular(200),
            topLeft: Radius.circular(200)
          )

        ),
      ),),
    );
  }
}
