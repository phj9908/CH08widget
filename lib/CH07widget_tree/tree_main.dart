import 'package:flutter/material.dart';
import 'tree_home.dart';

void main() => runApp(WidgetTreeApp());

class WidgetTreeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Tree',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WidgetTreePage(title: 'Flutter'),
    );
  }
}