import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'WidgetClasses.dart';
import 'popupButtonWidget.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){},
          ),
        ],
        flexibleSpace: SafeArea(     // 앱바 스트롤하면 튕기는 액션?하는 거
          child: Icon(
            Icons.photo_camera,
            size: 75.0,
            color: Colors.white70,
          ),
        ),

        bottom: PopupMenuButtonWidget()

      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(  // ?
            child: Column(
              children: [
                const ContainerBoxWidget(), // 만든 클래스 : 그라데이션 상자
                SizedBox(
                  height: 20,
                ),
                const ColumnWidget(), // 만든 클래스
                SizedBox(
                  height: 10,
                ),
                const RowWidget(),
                SizedBox(
                  height: 20,
                ),
                const ColumnAndRowNestingWidget(),
                const ButtonWidget(),
                const ButtonBarWidget(), // Buttonbar
              ],
            ),
          ), 
          
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.play_arrow),
        backgroundColor: Colors.lightGreen.shade100,
      ),
      bottomNavigationBar: BottomAppBar(    // 최하단 탭바
        color: Colors.lightGreen,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.pause),
            Icon(Icons.stop),
            Icon(Icons.access_time),
            Padding(
              padding: EdgeInsets.all(32.0),
            ),
          ],
        ),
      ),
    );
  }
}