import 'package:flutter/material.dart';

class FollowersTabScreen extends StatelessWidget {
  const FollowersTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double mediaQueryHeightScreen = MediaQuery.of(context).size.height;

    double mediaQueryWidthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: mediaQueryHeightScreen,
        width: mediaQueryWidthScreen,
        child: Text("Followertab Screen"),
      ),
    );
  }
}
