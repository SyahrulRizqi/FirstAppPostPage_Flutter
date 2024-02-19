import 'package:flutter/material.dart';
import 'package:appbar/posPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PostPage(),
    );
  }
}