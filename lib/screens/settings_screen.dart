import 'package:ebook_library/style/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double mediaQueryHeightScreen = MediaQuery.of(context).size.height;

    double mediaQueryWidthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.7),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_outlined, color: Colors.black)),
        centerTitle: false,
        toolbarHeight: 55,
        title: Text(
          "Settings",
          style: texstylew700Black16,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_active_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: Container(
        height: mediaQueryHeightScreen,
        width: mediaQueryWidthScreen,
        color: Colors.grey.withOpacity(0.2),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.centerLeft,
              height: 80,
              color: Colors.white,
              width: mediaQueryWidthScreen,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text("Settings", style: textStyleGreenDark),
                  SizedBox(height: 10),
                  Text(
                    "Account",
                    style: texstyleBoldBlack,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
