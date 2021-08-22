import 'package:ebook_library/style/style.dart';
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
          child: Column(
            children: [
              SizedBox(height: 30),
              Text('FOLLOWERS', style: texstylew700Black16),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 120),
                height: 1,
                color: Colors.black.withOpacity(0.3),
              ),
              SizedBox(height: 20),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black.withOpacity(0.5))),
                child: Icon(Icons.people,
                    size: 40, color: Colors.black.withOpacity(0.5)),
              ),
              SizedBox(height: 10),
              Text(
                "You don`t have any followers.",
                style: textsyleGreyNormal,
              )
            ],
          )),
    );
  }
}
