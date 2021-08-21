import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 20),
              Text("You don`t have any updates yet."),
              SizedBox(height: 15),
              Text(
                "Find your next book by following notable readers or\nadding  friends.",
                style: TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.black),
              ),
              SizedBox(height: 15),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  color: Color(0xff634a19),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "Find your friends",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0.5),
                ),
              ),
            ],
          )),
    );
  }
}
