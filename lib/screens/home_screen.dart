import 'package:ebook_library/style/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
            icon: Icon(LineIcons.listUl, color: Colors.blue), onPressed: () {}),
        title: Text(
          "HOME",
          style: GoogleFonts.lato(
              textStyle: TextStyle(
                  color: Colors.blue,
                  letterSpacing: .5,
                  fontWeight: FontWeight.bold)),
        ),
      ),
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
                      Text("Show All", style: googleFontBlue)
                    ],
                  ),
                  SizedBox(height: 10),
                  NewWidget(imageList: imageList, colors: colors),
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
                              padding: EdgeInsets.symmetric(horizontal: 10),
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
                          );
                        }),
                  ),
                  SizedBox(height: 20),
                  NewWidget(imageList: imageList, colors: colors),
                  SizedBox(height: 10),
                  NewWidget(imageList: imageList, colors: colors),
                ],
              ),
            ),
          )),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.imageList,
    required this.colors,
  }) : super(key: key);

  final List imageList;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 180,
        width: double.infinity,
        color: Colors.white,
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: imageList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 140,
                    width: 150,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          bottom: 2,
                          child: Container(
                            height: 120,
                            width: 140,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: colors[index]),
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          child: Container(
                            height: 120,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.yellow,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(imageList[index])),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    offset: Offset(15.0, 15.0),
                                    blurRadius: 15.0,
                                    spreadRadius: 0.1,
                                  ), //BoxShadow
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("The Testaments", style: googleFontBlack),
                      Text("Managerwood", style: googleFontGreyNormal)
                    ],
                  )
                ],
              );
            }));
  }
}
