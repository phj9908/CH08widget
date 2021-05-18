import 'package:flutter/material.dart';

class ContainerBoxWidget extends StatelessWidget {    // 그라데이션 박스 만들기
  const ContainerBoxWidget({ Key key }):super(key:key); // 정적 위젯 클래스 만들때 쓰는 코드

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(100.0), // 상자 좌측 하단부 둥근모서리
            bottomRight: Radius.circular(10.0) // 상자 우측 하단부 둥근모서리
        ),
        gradient: LinearGradient( // 상자 내 채우기 색 그라데이션
          begin: Alignment.topCenter, // 위에서 부터
          end: Alignment.bottomCenter, // 아래로 이어지는 그라데이션
          colors: [
            Colors.white, // 위 색
            Colors.lightGreen.shade500, // 아래 색
          ],

        ),
      ),
      child: Center(
        child: RichText( // 한 줄에 다른 스타일의 텍스트를 혼합시킬때
          text: TextSpan(
              text: 'Flutter wolrd',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.deepPurple,
                decoration: TextDecoration.underline,
              ),
              children:<TextSpan>[
                TextSpan(
                    text: ' for'
                ),
                TextSpan(
                    text: ' Mobile',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,

                    )
                ),
              ]),
        ),
      ),
    );
  }
}

class ColumnWidget extends StatelessWidget{ // 컬럼 위젯
  const ColumnWidget ({ Key key }):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center, // column열 센터
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Icon(Icons.photo_camera),
        SizedBox(
          height: 20.0,
        ),
        Text('Column 1'),
        Divider(),
        Text('Column 2'),
        Divider(),
        Text('Column 3'),
        Divider(),
      ],
    );
  }
}

class RowWidget extends StatelessWidget{ // 로우 위젯
  const RowWidget ({ Key key }):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center, // row열 센터
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[

        SizedBox(
          height: 20.0,
        ),
        Text('Row 1'),
        Divider(),
        Text('Row 2'),
        Divider(),
        Text('Row 3'),
        Divider(),
      ],
    );
  }
}

class ColumnAndRowNestingWidget extends StatelessWidget{
  const ColumnAndRowNestingWidget({ Key key }):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[

        Text('Columns and Row Nesting 1'),
        Divider(),
        Text('Columns and Row Nesting 2'),
        Divider(),
        Text('Columns and Row Nesting 3'),
        Divider(),
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Row Nesting1'),
            Text('Row Nesting2'),
            Text('Row Nesting3'),
          ],
        ),
        Divider(),
      ],
    );
  }
}

class ButtonWidget extends StatelessWidget{
  const ButtonWidget({ Key key }):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text('save >>  '),
            ElevatedButton(
                onPressed: (){
                },
                child: Text('Saved')),
            ElevatedButton(
                onPressed: (){
                },
                child: Icon(Icons.save)),
          ],
        ),
        Row(
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.flight),
                iconSize: 42,
                color: Colors.lightGreen,
                tooltip: 'Flight', // 클릭하면 아이콘 하단에 표시되는 작은 말풍선
                onPressed: (){}
            ),
            IconButton(
                icon: Icon(Icons.flight),
                onPressed: (){}
            ),
          ],
        ),

      ],
    );
  }
}

class ButtonBarWidget extends StatelessWidget{ // button으로 이루어진 bar(ButtonBar)
  const ButtonBarWidget({ Key key }):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      color: Colors.lightGreen.shade100,
      child: ButtonBar(
        alignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.map),
              onPressed: (){}
          ),IconButton(
              icon: Icon(Icons.airport_shuttle_rounded),
              onPressed: (){}
          ),IconButton(
              icon: Icon(Icons.brush_rounded),
              onPressed: (){}
          ),
        ],
      ),
    );
  }
}