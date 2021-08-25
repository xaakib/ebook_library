import 'package:ebook_library/style/style.dart';
import 'package:flutter/material.dart';

class HomeImageSlider extends StatelessWidget {
  const HomeImageSlider({
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
