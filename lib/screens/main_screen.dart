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
    MyBookScreen(),
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
