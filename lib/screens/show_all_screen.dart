import 'package:flutter/material.dart';

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
        body: Container(
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          physics: BouncingScrollPhysics(),
          itemCount: widget.imageList.length,
          itemBuilder: (BuildContext ctx, index) {
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(widget.imageList[index]))),
            );
          }),
    ));
  }
}
