import 'package:coursera_clone/downloads_page.dart';
import 'package:coursera_clone/profile_page.dart';
import 'package:flutter/material.dart';
import 'learn_page.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 2;
  final List<Widget> _children = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.orange,
    ),
    Learn(),
    Download(),
    Profile(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentIndex == 2
          ? GradientAppBar(
              actions: <Widget>[
                IconButton(icon: Icon(Icons.settings), onPressed: null)
              ],
              title: Text(
                'My Courses',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
              elevation: 0,
              centerTitle: true,
              backgroundColorStart: Colors.cyan,
              backgroundColorEnd: Colors.blue,
            )
          : AppBar(
              actions: <Widget>[
                _currentIndex == 4
                    ? IconButton(icon: Icon(Icons.settings), onPressed: null)
                    : Container()
              ],
              title: Text(
                _currentIndex == 0
                    ? 'Search'
                    : _currentIndex == 1
                        ? 'Recommended'
                        : _currentIndex == 3 ? 'Downloads' : 'Profile',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
              elevation: 0,
              centerTitle: true,
              backgroundColor: Colors.blueGrey[700],
            ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(Icons.search, color: Colors.blue),
            icon: new Icon(Icons.search, color: Colors.grey),
            title: new Text(
              'Explore',
              style: TextStyle(color: Colors.blue, fontSize: 12),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(Icons.star, color: Colors.blue),
            icon: new Icon(Icons.star, color: Colors.grey),
            title: new Text(
              'Recommended',
              style: TextStyle(color: Colors.blue, fontSize: 12),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(Icons.book, color: Colors.blue),
            icon: new Icon(Icons.book, color: Colors.grey),
            title: new Text(
              'Learn',
              style: TextStyle(color: Colors.blue, fontSize: 12),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(Icons.cloud_download, color: Colors.blue),
            icon: new Icon(Icons.cloud_download, color: Colors.grey),
            title: new Text(
              'Downloads',
              style: TextStyle(color: Colors.blue, fontSize: 12),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(Icons.person, color: Colors.blue),
            icon: new Icon(Icons.person, color: Colors.grey),
            title: new Text(
              'Profile',
              style: TextStyle(color: Colors.blue, fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
