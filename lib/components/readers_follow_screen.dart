import 'package:ebook_library/style/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReadersFollowScreen extends StatelessWidget {
  const ReadersFollowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text("Readers to follow", style: texstylew700Black16),
              SizedBox(height: 20),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt , sunt in culpa qui officia deserunt mollit anim id est laborum."),
              SizedBox(height: 20),
              Container(
                height: 0.5,
                color: Colors.black.withOpacity(0.5),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: 10,
                    physics: BouncingScrollPhysics(),
                    primary: false,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Otis Chandler",
                                    style: texstylew700Black16,
                                  ),
                                  SizedBox(height: 5),
                                  Text("1,262 books : 100,494 followers",
                                      style: texstyleNormalGrey12),
                                  SizedBox(height: 10),
                                  Container(
                                    constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.of(context).size.width *
                                                0.78),
                                    child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco lab!',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Get.snackbar("Clicked", "Read More",
                                          colorText: Colors.white,
                                          backgroundColor: Colors.redAccent,
                                          icon: Icon(Icons.person,
                                              color: Colors.white),
                                          snackPosition: SnackPosition.BOTTOM,
                                          duration: Duration(seconds: 1));
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("Read More "),
                                        Icon(Icons.arrow_right_alt_sharp)
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 35,
                                    width: 200,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color:
                                                Colors.black.withOpacity(0.5)),
                                        borderRadius:
                                            BorderRadius.circular(05)),
                                    child: Text(
                                      "Follow",
                                      style: texstyleNormalBlack14,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
