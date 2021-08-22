import 'package:ebook_library/style/style.dart';
import 'package:flutter/material.dart';

class ReadersFollowScreen extends StatelessWidget {
  const ReadersFollowScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Text("Readers to follow",style: texstyleBoldBlack,)
        ],
      ),
      
    );
  }
}