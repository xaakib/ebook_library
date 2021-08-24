import 'package:ebook_library/screens/settings_screen.dart';
import 'package:ebook_library/style/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'about_screen.dart';
import 'author_profile_screen.dart';
import 'friend_and_follower_screen.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(AuthorProfileScreen());
                  },
                  child: ListTile(
                    title: Text(
                      'Profile',
                      style: texstyleBoldBlack,
                    ),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    Get.to(AuthorProfileScreen());
                  },
                  child: ListTile(
                    title: Text(
                      'Wallet',
                      style: texstyleBoldBlack,
                    ),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    Get.to(AuthorProfileScreen());
                  },
                  child: ListTile(
                    title: Text(
                      'Contact',
                      style: texstyleBoldBlack,
                    ),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    Get.to(FriendAndFollowerScreen());
                  },
                  child: ListTile(
                    title: Text(
                      'Friend & Followers',
                      style: texstyleBoldBlack,
                    ),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    Get.to(SettingsScreen());
                  },
                  child: ListTile(
                    title: Text(
                      'Settings',
                      style: texstyleBoldBlack,
                    ),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    Get.to(AuthorProfileScreen());
                  },
                  child: ListTile(
                    title: Text(
                      'Privacy',
                      style: texstyleBoldBlack,
                    ),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    Get.to(AboutScreen());
                  },
                  child: ListTile(
                    title: Text(
                      'About',
                      style: texstyleBoldBlack,
                    ),
                  ),
                ),
                Divider(),
              ],
            ),
          )),
    );
  }
}
