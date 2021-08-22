import 'package:ebook_library/components/readers_follow_screen.dart';
import 'package:ebook_library/screens/discover_screen.dart';
import 'package:ebook_library/screens/home_screen.dart';
import 'package:ebook_library/screens/more_screen.dart';
import 'package:ebook_library/screens/my_books_screen.dart';
import 'package:ebook_library/screens/search_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ReadersFollowScreen(),
    DivscoverScreen(),
    SearchScreen(),
    MoreScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        backgroundColor: Colors.white.withOpacity(0.7),
        centerTitle: false,
        toolbarHeight: 55,
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: TextField(
              decoration: InputDecoration(
                  icon: Icon(Icons.search_outlined,
                      size: 30, color: Colors.black.withOpacity(0.5)),
                  border: InputBorder.none,
                  hintText: "Title, author or ISBN",
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 17))),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_active_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: 'My Books',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_sharp),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_outlined),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red[800],
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
