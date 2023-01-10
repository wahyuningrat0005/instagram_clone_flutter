import 'package:flutter/material.dart';
import 'package:instagram_clone/views/home.dart';

class BottomWidget extends StatefulWidget {
 const  BottomWidget({super.key});

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  int _selectIndex = 0;
  static const List<Widget> _widgetOptions = [
    HomePage(),
    Text(
      "Halaman Business",
      style: TextStyle(
        fontSize: 30.0,
      ),
    ),
    Text(
      "school",
      style: TextStyle(
        fontSize: 30.0,
      ),
    ),
    Text(
      "school",
      style: TextStyle(
        fontSize: 30.0,
      ),
    ),
    Text(
      "school",
      style: TextStyle(
        fontSize: 30.0,
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectIndex),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey[350],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: ('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
              ),
              label: ('search'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_collection_outlined,
              ),
              label: ('search'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shop_2_outlined),
              label: ('Business'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ('school'),
            ),
          ]),
    );
  }
}
