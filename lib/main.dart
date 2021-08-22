import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/readers_follow_screen.dart';
import 'screens/home_screen.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ebook Library',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ReadersFollowScreen(),
    );
  }
}
