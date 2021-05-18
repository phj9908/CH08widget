import 'basic_page.dart';
import 'package:flutter/material.dart';

main() => runApp(BasicApp());

class BasicApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Basic App",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen
      ),
      home: HomePage(),
    );
  }

}