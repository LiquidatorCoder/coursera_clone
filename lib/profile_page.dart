import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.blueGrey[700],
            child: Column(
              children: <Widget>[
                Spacer(),
                SizedBox(width: 720, height: 0),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 70,
                  backgroundImage: NetworkImage(
                      'https://api.adorable.io/avatars/285/abtet@adoraqwe234.png'),
                ),
                Spacer(),
                Text(
                  'Random User',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Spacer(),
                Icon(
                  Icons.library_books,
                  size: 100,
                  color: Colors.grey,
                ),
                Spacer(),
                Text(
                  'You don\'t have any completed courses yet. Youc can find courses to take in the \'Explore\' tab.',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
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
                          Text('Find something to learn',
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
        ),
      ],
    );
  }
}
