import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowAllScreen extends StatefulWidget {
  final List imageList;

  const ShowAllScreen({Key? key, required this.imageList}) : super(key: key);

  @override
  _ShowAllScreenState createState() => _ShowAllScreenState();
}

class _ShowAllScreenState extends State<ShowAllScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Book title name"),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.black),
            onPressed: () => Get.back(),
          ),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.bookmark_add_rounded, color: Colors.black))
          ],
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 15.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 0.6,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              children: List.generate(20, (index) {
                return Container(
                  height: 130,
                  width: 140,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-thriller-book-cover-design-template-3675ae3e3ac7ee095fc793ab61b812cc_screen.jpg?ts=1588152105")),
                      borderRadius: BorderRadius.circular(8)),
                );
              }),
            )));
  }
}
