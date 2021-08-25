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
    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-thriller-book-cover-design-template-3675ae3e3ac7ee095fc793ab61b812cc_screen.jpg?ts=1588152105",
    "https://images.squarespace-cdn.com/content/v1/5202d1b3e4b099a0812c51a3/1483134090134-QOJK8Q9CL5DMFN99XWQO/Before-Sunrise.jpg",
    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-thriller-book-cover-design-template-3675ae3e3ac7ee095fc793ab61b812cc_screen.jpg?ts=1588152105",
    "https://images.squarespace-cdn.com/content/v1/5202d1b3e4b099a0812c51a3/1483134090134-QOJK8Q9CL5DMFN99XWQO/Before-Sunrise.jpg",
    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-thriller-book-cover-design-template-3675ae3e3ac7ee095fc793ab61b812cc_screen.jpg?ts=1588152105",

    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-thriller-book-cover-design-template-3675ae3e3ac7ee095fc793ab61b812cc_screen.jpg?ts=1588152105",
    "https://images.squarespace-cdn.com/content/v1/5202d1b3e4b099a0812c51a3/1483134090134-QOJK8Q9CL5DMFN99XWQO/Before-Sunrise.jpg",
    // "https://marketplace.canva.com/EAD7YH8bebE/1/0/1003w/canva-white-bold-text-thriller-mystery-book-cover-9g0hPVfwFlI.jpg",
    // "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/mystery-book-cover-design-template-a5dce61a0c99630dedab42e3a4c15618_screen.jpg?ts=1598009661",
    // "https://www.bookcoversart.com/wp-content/uploads/2019/11/Thriller-Espionage-Premade-Book-Cover-The-Truth-Unravels.jpg",
    // "https://m.media-amazon.com/images/I/51ouoRh9nPL.jpg",
    // "https://m.media-amazon.com/images/I/51GkXpaDsYL.jpg",
  ];
  final List imageList = [
    "https://images.unsplash.com/photo-1513001900722-370f803f498d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJvb2tzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1585834376592-96e6797eede1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Ym9va3MlMjBwb3N0ZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1619164816991-22d393238d8f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJvb2tzJTIwcG9zdGVyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1589829085413-56de8ae18c73?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGJvb2tzJTIwcG9zdGVyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1585834447635-ac12228f315b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTF8fGJvb2tzJTIwcG9zdGVyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1513001900722-370f803f498d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJvb2tzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1585834376592-96e6797eede1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Ym9va3MlMjBwb3N0ZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
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
