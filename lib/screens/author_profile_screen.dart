import 'package:ebook_library/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class AuthorProfileScreen extends StatefulWidget {
  AuthorProfileScreen({Key? key}) : super(key: key);

  @override
  _AuthorProfileScreenState createState() => _AuthorProfileScreenState();
}

class _AuthorProfileScreenState extends State<AuthorProfileScreen> {
  var ratings;

  @override
  Widget build(BuildContext context) {
    print("Loaded");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_outlined, color: Colors.black),
        ),
        title: Text("Author Profile", style: texstylew700Black16),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_active_outlined,
                  color: Colors.black))
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1520223297779-95bbd1ea79b7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fHByb2ZpbGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")))),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10),
                              Text("Tetsuko Kuroyanagi",
                                  style: texstylew700Black16),
                              SizedBox(height: 5),
                              Text("Author of 21 books",
                                  style: textsyleGreyNormal),
                              Row(
                                children: [
                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    itemSize: 14,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 1.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.red,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);

                                      setState(() {
                                        ratings = rating.toString();
                                      });
                                    },
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                      ratings == null
                                          ? "0.0"
                                          : "$ratings".toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Text("26,438 ratings 2,494 reviews",
                                  style: texstyleNormalGrey12)
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                        "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?"),
                    TextButton(
                      onPressed: () {
                        Get.snackbar("Clicked", "Read More",
                            colorText: Colors.white,
                            backgroundColor: Colors.redAccent,
                            icon: Icon(Icons.person, color: Colors.white),
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
                  ],
                ),
              ),
              Container(height: .5, color: Colors.black.withOpacity(0.5)),
              SizedBox(height: 10),
              Text("21 BOOKS TETSUKO KUROYANGI", style: texstyleBoldBlack),
              SizedBox(height: 5),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 100),
                  height: 0.5,
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.5)),
              SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 20,
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Container(
                          height: 100,
                          width: double.infinity,
                          color: Colors.white,
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          "https://images.unsplash.com/photo-1544947950-fa07a98d237f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJvb2t8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                                        ))),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Toto- chan : The Little Girl at the Window",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Container(
                                        constraints: BoxConstraints(
                                            maxWidth: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.7),
                                        child: RichText(
                                          text: TextSpan(
                                            text: 'by ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.normal),
                                            children: const <TextSpan>[
                                              TextSpan(
                                                  text:
                                                      'Tesko, Kuroyangai chitiro , lwasaki , Dorithy, brithjon"!',
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontWeight:
                                                          FontWeight.w600)),
                                            ],
                                          ),
                                        )),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            RatingBar.builder(
                                              initialRating: 3,
                                              minRating: 1,
                                              itemSize: 12,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemPadding: EdgeInsets.symmetric(
                                                  horizontal: 1.0),
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: Colors.red,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);

                                                setState(() {
                                                  ratings = rating.toString();
                                                });
                                              },
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                                ratings == null
                                                    ? "0.0"
                                                    : "$ratings".toString(),
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w500)),
                                          ],
                                        ),
                                        Text("26,438 ratings",
                                            style: texstyleNormalGrey12)
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
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
