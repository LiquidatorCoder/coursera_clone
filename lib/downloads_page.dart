import 'package:flutter/material.dart';

class Download extends StatefulWidget {
  @override
  _DownloadState createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Spacer(),
                Text(
                  'Download your course and learn anywhere',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(
                  Icons.file_download,
                  size: 100,
                  color: Colors.grey,
                ),
                Spacer(),
                Text(
                  'You can access your course material offline by downloading it to your device.',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                Spacer(),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: MaterialButton(
                      height: 50,
                      disabledColor: Colors.blue,
                      onPressed: null,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Find a course',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white)),
                        ],
                      )),
                ))
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(),
        )
      ],
    );
  }
}
