//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/app_screens/home.dart';
//import './app_screens/first_screen.dart';

void main() =>
  runApp(new MyFlutterApp());

class MyFlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Exploring UI widget",
        home: Scaffold(
          appBar: AppBar(title: Text("Long List"),),
          body: getListView2(),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              debugPrint("FAB Clicked");
            },
            child: Icon(Icons.add),
            tooltip: "Add One More Item",
          ),
        ),

//        home: Scaffold(
//          body: getListView(),
//        ),
    
//        Scaffold(
//          appBar: AppBar(
//              title: Text("My First App Screen")
//          ),
//          body: FirstScreen()
//        body: Home(),
        );

  }

}
Widget getListView(){
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Lanscape"),
        subtitle: Text("Beatiful View !"),
        trailing: Icon(Icons.wb_sunny),
        onTap: (){
          debugPrint("Lanscape tapped");
        },
      ),
      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text("Windows"),
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text("Phone"),
      ),
      Text("Yest another element in List"),
      Container(
        color: Colors.red,
        height: 50.0,
      )
    ],
  );

  return listView;
}
List<String> getListElements(){
  var items = List<String>.generate(1000, (counter) => "Item $counter");
  return items;
}
Widget getListView2(){
  var listItems = getListElements();
  var listView = ListView.builder(
      itemBuilder: (context,index){
        return ListTile(
          leading: Icon(Icons.arrow_right),
          title: Text(listItems[index]),
          onTap: (){
            showSnackBar(context,listItems[index]);
          },
        );
      }
      );
  return listView;
}

void showSnackBar(BuildContext context, String item){
  var snackBar = SnackBar(
    content: Text("You just tapped $item"),
    action: SnackBarAction(
        label: "Undo",
        onPressed: (){
          debugPrint("Performing dummy UNDO operation");
        }),
  );
  Scaffold.of(context).showSnackBar(snackBar);
}