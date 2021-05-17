import 'package:flutter/material.dart';

void main() => runApp(MyAppBar());

class MyAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'My appBar',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyAppBarHome(),
    );
  }
}

class MyAppBarHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'App bar',
        ),
        actions: <Widget>[
          IconButton(
              icon:Icon(Icons.add),
              onPressed: (){
                print('Add IconButton Pressed...');
              }),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Body')
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            buildRow(Icons.account_box, 'drawButton pressed', 'ID000001'),
            buildRow(Icons.account_box, 'drawButton pressed', 'ID000002'),
          ],
        ),
      ),
      persistentFooterButtons: <Widget>[ // bottomsheetButton의 하단에 생성
        Row(
          children: <Widget>[
            IconButton(
                icon:Icon(Icons.account_box),
                onPressed: (){
                  print('Persisting button pressed');
                }),
            Text('Persistent Button')
          ],
        ),
      ],
      bottomSheet: Container(   // 화면 하단부 위젯 지정(FloatingActionButton 부근 하단)
        color: Colors.lightGreen,
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: <Widget>[
            IconButton(
                icon:Icon(Icons.airport_shuttle_rounded),
                onPressed: (){
                  print('Bottom Sheet Icon Pressed...');
                }),
            Text(' BTS')
          ],
        ),
      ),
      bottomNavigationBar:  BottomNavigationBar( // 화면 최하단, 이거위에 PersistentButton 위치
        type: BottomNavigationBarType.fixed,
        onTap: (index) => debugPrint('BottomNavigatorBar Button : $index'),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
              label: "BNB Item1"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: "BNB Item2"
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print('FloatingActionButton');
    },
          tooltip: 'add',
          child: Icon(Icons.add),
    ),


      );
 }

  Row buildRow(IconData iconWidget, String printText, String text  ) {
    return Row(
            children: <Widget>[
              IconButton(
                  icon:Icon(iconWidget),
                  onPressed: (){
                    print(printText);
                  }),
              Text(text)
            ],
          );
  }
}
