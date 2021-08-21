import 'package:ebook_library/style/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'author_profile_screen.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  final List moreItems = [
    'Profile',
    'Wallet',
    'Contact',
    'Settings',
    'Privacy',
    'About'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: ListView.builder(
              itemCount: moreItems.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.to(AuthorProfileScreen());
                  },
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          moreItems[index],
                          style: texstyleBoldBlack,
                        ),
                      ),
                      Divider(),
                    ],
                  ),
                );
              })),
    );
  }
}
