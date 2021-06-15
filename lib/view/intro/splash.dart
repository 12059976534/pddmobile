import 'dart:async';

import 'package:flutter/material.dart';

import 'intro.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    starSplash();
  }

  starSplash() async {
    return Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return Intro();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue,
            Colors.purple,
          ],
        )),
        child: Container(
            child: Column(
          children: [
            SizedBox(
              height: 250,
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Column(
                    children: [
                      Text(
                        'PORTAL DESA DIGITAL',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Colors.white,
                            fontSize: 27),
                      ),
                      Text(
                        "Sistem Informasi Desa Berbasis Mobile",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/image/logo.png',
                    width: 200,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 280,
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Text(
                    'Versi 1.0.0',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        color: Colors.white,
                        fontSize: 14),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
