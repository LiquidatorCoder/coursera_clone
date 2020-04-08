import 'package:flutter/material.dart';

class Learn extends StatefulWidget {
 @override
 State<StatefulWidget> createState() {
    return _LearnState();
  }
}

class _LearnState extends State<Learn> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('Hello! this is learn'));
  }
}