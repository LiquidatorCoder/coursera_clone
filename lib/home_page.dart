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
   Container(color: Colors.red,),
   Container(color: Colors.orange,),
   Learn(),
   Container(color: Colors.blue,),
   Container(color: Colors.green,),
 ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Courses'),
        elevation: 0,
        centerTitle: true,
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.search,
              color: Colors.blue,
            ),
            title: new Text(
              'Search',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.star, color: Colors.blue),
            title: new Text(
              'Special',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.book, color: Colors.blue),
            title: new Text(
              'Learn',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.cloud_download, color: Colors.blue),
            title: new Text(
              'Downloads',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person, color: Colors.blue),
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
