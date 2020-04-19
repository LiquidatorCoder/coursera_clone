import 'package:flutter/material.dart';
import 'dart:math';

var rng = new Random();

class Learn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnState();
  }
}

class _LearnState extends State<Learn> {
  List courses = [
    {
      'courseProvider': 'University of California San Diego',
      'courseName': 'Data Structures',
      'progress': rng.nextDouble(),
    },
    {
      'courseProvider': 'University of Michigan',
      'courseName': 'Using Python to Access Web Data',
      'progress': rng.nextDouble(),
    },
    {
      'courseProvider': 'University of Colorado Boulder',
      'courseName': 'Hardware Description Languages for FPGA Design',
      'progress': rng.nextDouble(),
    },
    {
      'courseProvider': 'IBM',
      'courseName': 'Machine Learning with Python',
      'progress': rng.nextDouble(),
    },
    {
      'courseProvider': 'Princeton University',
      'courseName': 'Algorithms, Part I',
      'progress': rng.nextDouble(),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [Colors.blue, Colors.cyan],
        ),
        image: DecorationImage(
            image: AssetImage('assets/images/bg card.png'),
            alignment: Alignment.bottomCenter),
      ),
      child: ListView.builder(
        itemBuilder: (context, position) {
          return Card(
            margin: EdgeInsets.fromLTRB(18, 9, 18, 9),
            elevation: 8,
            child: SizedBox(
              height: 305,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              courses[position]['courseProvider'],
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                            Container(
                              width: 300,
                              child: Text(
                                courses[position]['courseName'],
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: null,
                          color: Colors.grey,
                          icon: Icon(Icons.more_horiz),
                        )
                      ],
                    ),
                    SizedBox(height: 34),
                    Text(
                      'Pick up where you left off',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    SizedBox(height: 7),
                    LinearProgressIndicator(
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Colors.yellow[700]),
                      value: courses[position]['progress'],
                      backgroundColor: Colors.grey[200],
                    ),
                    SizedBox(height: 17),
                    RaisedButton(
                      disabledColor: Colors.grey[100],
                      onPressed: null,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          "Don't let the great things you learned fade away! Reset your deadlines and complete your assignment every week.",
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                        child: MaterialButton(
                            height: 50,
                            disabledColor: Colors.blue,
                            onPressed: null,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Reset my deadlines',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.white)),
                              ],
                            )))
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: courses.length,
      ),
    );
  }
}
