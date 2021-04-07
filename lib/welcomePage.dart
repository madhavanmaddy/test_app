import 'package:flutter/material.dart';
import 'package:test_app/main.dart';

import 'auth.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset(
            'assets/welcome.png',
            width: double.maxFinite,
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Welcome!!',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          OutlineButton(
            borderSide: BorderSide(color: Colors.blue),
            shape: StadiumBorder(),
            onPressed: () {
              signOutGoogle().then((result) {
                Navigator.pushAndRemoveUntil<dynamic>(
                  context,
                  MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) => MyHomePage(),
                  ),
                  (route) => false,
                );
              });
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                  scale: 10,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Sign Out',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
