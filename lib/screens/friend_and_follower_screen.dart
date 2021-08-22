import 'package:ebook_library/components/followers_tab_screen.dart';
import 'package:ebook_library/components/following_tab_screen.dart';
import 'package:ebook_library/components/friend_tab_screen.dart';
import 'package:ebook_library/style/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FriendAndFollowerScreen extends StatelessWidget {
  const FriendAndFollowerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double mediaQueryHeightScreen = MediaQuery.of(context).size.height;

    double mediaQueryWidthScreen = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            tabs: [
              Tab(text: "FRIENDS"),
              Tab(text: "FOLLOWING"),
              Tab(text: "FOLLOWERS"),
            ],
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_outlined, color: Colors.black),
          ),
          title: Text("Friend & Followers", style: texstylew700Black16),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_active_outlined,
                    color: Colors.black))
          ],
        ),
        body: TabBarView(
          children: [
            FriendsTabScreen(),
            FollowingTabScreen(),
            FollowersTabScreen(),
          ],
        ),
      ),
    );
  }
}
