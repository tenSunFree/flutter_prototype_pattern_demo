import 'package:flutter/material.dart';
import 'file:///C:/FlutterPrototypePatternDemo/flutter_prototype_pattern_demo/lib/home/home_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'FlutterPrototypePatternDemo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomeScreen());
}
