import 'package:ebook_library/style/style.dart';
import 'package:flutter/material.dart';

class FriendsTabScreen extends StatelessWidget {
  const FriendsTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double mediaQueryHeightScreen = MediaQuery.of(context).size.height;
    double mediaQueryWidthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: mediaQueryHeightScreen,
        width: mediaQueryWidthScreen,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                "READERS TO FOLLOW",
                style: texstyleBoldBlack,
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 120),
                height: 1,
                color: Colors.black.withOpacity(0.3),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30)),
                child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.search_outlined,
                            size: 30, color: Colors.black.withOpacity(0.5)),
                        border: InputBorder.none,
                        hintText: "Search your friends",
                        hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 17))),
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
              SizedBox(height: 20),
              Text(
                  "Connect on Goodreads to see what\nyour friends are reading, share reviews,\nhighlights, recommendations,and\nmore.",
                  style: textsyleGreyNormal,
                  textAlign: TextAlign.center),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  color: Color(0xff634a19),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "Find contacts",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0.5),
                ),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black.withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "Share Goodreads",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0.5),
                ),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(2)),
                      child: Text(
                        "f",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900]),
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Add facebook friends",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0.5),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
