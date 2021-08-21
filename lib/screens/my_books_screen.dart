import 'package:flutter/material.dart';

class MyBookScreen extends StatelessWidget {
  const MyBookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Center(
          child: Text("MyMyBookScreen"),
        ),
      ),
    );
  }
}
