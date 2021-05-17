import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Scaffold",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen
      ),
      home: MyScaffoldPage(),
    );
  }

}

class MyScaffoldPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("App Bar"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: (){print("+ button pressed");})
        ],
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text("Body")
          ],
        ),
      ),
      drawer: new Drawer(
        child: ListView(
          children: [
            Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: (){print("D1 button pressed");}
                    ),
                Text("Drawer Item 1")
              ],
            ),
            Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.remove_circle),
                    onPressed: (){print("D2 button pressed");}
                ),
                Text("Drawer Item 2")
              ],
            )
          ],
        ),
      ),
      floatingActionButton:
      new FloatingActionButton(
        onPressed: (){print("Bottom Sheet Icon pressed");},
        tooltip: "Add",
        child: new Icon(Icons.add),),
      persistentFooterButtons: [
        Row(
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.remove),
                onPressed: (){print("Persistent button pressed");}
            ),
            Text("Persistent Footer Text")
          ],
        )
      ],
      bottomSheet: Container(
        color: Colors.lightGreen,
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.remove),
                onPressed: (){print("Bottom Sheet Icon pressed");}
            ),
            Text("BTS")
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) => debugPrint("BNB onTap: $index"),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "BNB Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: "BNB Mail"
          )
        ],
      ),
    );
  }

}