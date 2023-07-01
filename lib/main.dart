import 'package:flutter/material.dart';
import 'package:score_app/home_screen.dart';

void main() {
  runApp(CricketScoreboardApp());
}

class CricketScoreboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cricket Scoreboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CricketScoreboardPage(),
    );
  }
}

