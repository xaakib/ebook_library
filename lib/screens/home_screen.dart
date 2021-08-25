import 'package:ebook_library/components/home_image_slider.dart';
import 'package:ebook_library/screens/details_screen.dart';
import 'package:ebook_library/style/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'show_all_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Color> colors = [
    Colors.redAccent,
    Colors.orangeAccent,
    Colors.yellowAccent,
    Colors.lightGreenAccent,
    Colors.lightBlue,
    Colors.indigoAccent,
    Colors.purpleAccent,
  ];
  final List<String> topItems = [
    'Explore',
    'BestSellers',
    'Newest',
  ];

  int menuItemSelect = 0;
  final List booksList = [
    "https://ds.rokomari.store/rokomari110/ProductNew20190903/260X372/who_moved_my_cheese-Spencer_Johnson-f10e9-218101.jpg",
    "https://ds.rokomari.store/rokomari110/ProductNew20190903/260X372/rokimg_20140603_70434.gif",
    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-thriller-book-cover-design-template-3675ae3e3ac7ee095fc793ab61b812cc_screen.jpg?ts=1588152105",
    "https://s3.us-west-2.amazonaws.com/boitoi/media/book/560d212c-3a99-4da3-bcd5-166da904ec33_lg.jpg",
    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-thriller-book-cover-design-template-3675ae3e3ac7ee095fc793ab61b812cc_screen.jpg?ts=1588152105",
    "https://s3.us-west-2.amazonaws.com/boitoi/media/book/8eb97fbc-274e-4508-a9e9-98eadc27fccd_lg.jpg",
    "https://images.squarespace-cdn.com/content/v1/5202d1b3e4b099a0812c51a3/1483134090134-QOJK8Q9CL5DMFN99XWQO/Before-Sunrise.jpg",
  ];
  final List imageList = [
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
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Your Interest", style: googleFontBlack),
                      InkWell(
                          onTap: () => Get.to(
                              ShowAllScreen(imageList: imageList),
                              transition: Transition.zoom),
                          child: Text("Show All", style: googleFontBlue))
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      height: 190,
                      width: double.infinity,
                      color: Colors.white,
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: booksList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            Color color = colors[index];
                            var image = booksList[index];

                            return InkWell(
                                onTap: () => Get.to(
                                    DetailScreen(image: image[index]),
                                    transition: Transition.zoom),
                                child: HomeImageSlider(
                                    color: color, image: image));
                          })),
                  SizedBox(height: 20),
                  Container(
                    color: Colors.white,
                    height: 30,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: topItems.length,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() => menuItemSelect = index);
                              print("menuItemSelect $menuItemSelect");
                              print("topItems ${topItems[index]}");
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                  bottom: BorderSide(
                                      width: 2.0,
                                      color: menuItemSelect == index
                                          ? Colors.blue
                                          : Colors.transparent),
                                )),
                                child: Text(
                                  topItems[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: menuItemSelect == index
                                          ? Colors.blue
                                          : Colors.grey,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(height: 20),
                  Container(
                      height: 180,
                      width: double.infinity,
                      color: Colors.white,
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: imageList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            Color color = colors[index];
                            var image = imageList[index];

                            return HomeImageSlider(color: color, image: image);
                          })),
                  SizedBox(height: 10),
                ],
              ),
            ),
          )),
    );
  }
}
