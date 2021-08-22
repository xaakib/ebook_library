import 'package:ebook_library/style/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FollowingTabScreen extends StatelessWidget {
  const FollowingTabScreen({Key? key}) : super(key: key);

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
                height: mediaQueryHeightScreen,
                width: mediaQueryWidthScreen,
                child: ListView.builder(
                    itemCount: 10,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Card(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fHByb2ZpbGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")),
                                          color: Colors.blue,
                                          shape: BoxShape.circle),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Otis Chandler",
                                            style: texstylew700Black16,
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                              "1,262 books : 100,494 followers",
                                              style: texstyleNormalGrey12),
                                          SizedBox(height: 5),
                                          Container(
                                            height: 1,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            color:
                                                Colors.black.withOpacity(0.5),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Get.snackbar(
                                            "FOLLOW", "you are followed people",
                                            colorText: Colors.white,
                                            backgroundColor: Colors.green[900],
                                            icon: Icon(Icons.person,
                                                color: Colors.white),
                                            snackPosition: SnackPosition.BOTTOM,
                                            duration: Duration(seconds: 2));
                                      },
                                      child: Row(
                                        children: [
                                          Icon(Icons.bookmark),
                                          Text("FOLLOW",
                                              style: TextStyle(
                                                  color: Colors.green[900],
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Get.snackbar("SEE ALL", "Coming soon",
                                            colorText: Colors.white,
                                            backgroundColor: Colors.green[900],
                                            icon: Icon(Icons.person,
                                                color: Colors.white),
                                            snackPosition: SnackPosition.BOTTOM,
                                            duration: Duration(seconds: 2));
                                      },
                                      child: Row(
                                        children: [
                                          Icon(Icons.arrow_right_sharp),
                                          Text("SEE ALL",
                                              style: TextStyle(
                                                  color: Colors.green[900],
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
