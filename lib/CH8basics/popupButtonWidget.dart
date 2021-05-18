import 'package:flutter/material.dart';

enum Todo { FastFood, Remind, Flight, Music } // enum : 서로 연관된 상수들의 집합

class PopupMenuButtonWidget extends StatelessWidget implements PreferredSizeWidget{     // todeomenuitem 이용하여 메뉴바에 뜨게하도록
  PopupMenuButtonWidget({ Key key,  }):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.lightGreen.shade100,
      height: preferredSize.height,
      width: double.infinity,
      child: Center(
        child: PopupMenuButton<Todo>(
            icon: Icon(Icons.view_list),          // 팝업메뉴 아이콘
            onSelected: ((Todo result){         // 아이콘 클릭시
              print('valueSelected : ${result.index}');
            }),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<Todo>>[
              buildPopupMenuItem(Todo.FastFood, Icons.fastfood, 'FastFood'),
              buildPopupMenuItem(Todo.Remind, Icons.add_alarm, 'Remind Me'),
              buildPopupMenuItem(Todo.Flight, Icons.flight, 'Flight'),
              buildPopupMenuItem(Todo.Music, Icons.audiotrack, 'Music'),
            ]
        ),
      ),
    );
  }

  PopupMenuItem<Todo> buildPopupMenuItem( Todo todo, IconData iconData,String text ) {
    return PopupMenuItem<Todo>(
      value: todo,
      child: Row(
        children: <Widget>[
          Icon(iconData),
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          Text(text),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(75.0);
}