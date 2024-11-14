import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.red,
            // backgroundImage: AssetImage(),
          ),
          Image(image: AssetImage('b/r.jpg'))
        ],
      ),
    ),
  ));
}
