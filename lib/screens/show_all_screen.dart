import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'details_screen.dart';

class ShowAllScreen extends StatefulWidget {
  final List imageList;

  const ShowAllScreen({Key? key, required this.imageList}) : super(key: key);

  @override
  _ShowAllScreenState createState() => _ShowAllScreenState();
}

class _ShowAllScreenState extends State<ShowAllScreen> {
  final List booksList = [
    "https://ds.rokomari.store/rokomari110/ProductNew20190903/260X372/who_moved_my_cheese-Spencer_Johnson-f10e9-218101.jpg",
    "https://ds.rokomari.store/rokomari110/ProductNew20190903/260X372/rokimg_20140603_70434.gif",
    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-thriller-book-cover-design-template-3675ae3e3ac7ee095fc793ab61b812cc_screen.jpg?ts=1588152105",
    "https://s3.us-west-2.amazonaws.com/boitoi/media/book/560d212c-3a99-4da3-bcd5-166da904ec33_lg.jpg",
    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-thriller-book-cover-design-template-3675ae3e3ac7ee095fc793ab61b812cc_screen.jpg?ts=1588152105",
    "https://s3.us-west-2.amazonaws.com/boitoi/media/book/8eb97fbc-274e-4508-a9e9-98eadc27fccd_lg.jpg",
    "https://images.squarespace-cdn.com/content/v1/5202d1b3e4b099a0812c51a3/1483134090134-QOJK8Q9CL5DMFN99XWQO/Before-Sunrise.jpg",
  ];
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
              children: List.generate(booksList.length, (index) {
                var indexs = booksList[index];
                return InkWell(
                  onTap: () => Get.to(
                      DetailScreen(
                        image: indexs.toString(),
                      ),
                      transition: Transition.zoom),
                  child: Container(
                    height: 130,
                    width: 140,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill, image: NetworkImage(indexs)),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                );
              }),
            )));
  }
}
