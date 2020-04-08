import 'package:flutter/material.dart';
import 'learn_page.dart';

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
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: <Widget>[IconButton(icon: Icon(Icons.settings), onPressed: null)],
        title: Text('My Courses',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
        elevation: 0,
        centerTitle: true,
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
              'Search',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(Icons.star, color: Colors.blue),
            icon: new Icon(Icons.star, color: Colors.grey),
            title: new Text(
              'Special',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(Icons.book, color: Colors.blue),
            icon: new Icon(Icons.book, color: Colors.grey),
            title: new Text(
              'Learn',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(Icons.cloud_download, color: Colors.blue),
            icon: new Icon(Icons.cloud_download, color: Colors.grey),
            title: new Text(
              'Downloads',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(Icons.person, color: Colors.blue),
            icon: new Icon(Icons.person, color: Colors.grey),
            title: new Text(
              'Accounts',
              style: TextStyle(color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}
