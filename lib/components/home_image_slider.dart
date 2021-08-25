import 'package:ebook_library/style/style.dart';
import 'package:flutter/material.dart';

class HomeImageSlider extends StatelessWidget {
  const HomeImageSlider({
    Key? key,
    required this.color,
    required this.image,
  }) : super(key: key);

  final Color color;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          height: 150,
          width: 150,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                bottom: 2,
                child: Container(
                  height: 130,
                  width: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8), color: color),
                ),
              ),
              Positioned(
                bottom: 15,
                child: Container(
                  height: 150,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.yellow,
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(image)),
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
  }
}
