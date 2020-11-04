import 'package:flutter/material.dart';
import 'package:fluttertodo/ToDo.dart';
class CardList extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CardListState();
  }


}


class CardListState extends State<CardList>

{

  List<ToDo> _listTodo = [new ToDo("to do 1 ", "description 1"),new ToDo("to do 2 ", "description 2"),
  new ToDo("to do 3 ", "description 3"),new ToDo("to do 4 ", "description 4")];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      elevation: 5,
      color: Colors.white70,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: <Widget>[
          Center(
            child:
            Padding(padding: EdgeInsets.all(20),child:
            Text("CREATE TO DO LIST",style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.bold),)
              ,)
            ,
          ),
          Card(
             elevation: 5,
             color: Colors.white,
             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.all(Radius.circular(20))
             ),

           child:
               Expanded(child:
               ListView.builder
                 (
                   itemCount: _listTodo.length,
                   itemBuilder:

                       (BuildContext context, int index)
                   {
                     return ListTile(
                       leading: FlutterLogo(size: 56.0),
                       title: Text(_listTodo[index].name),
                       subtitle: Text(_listTodo[index].description),
                       trailing: Icon(Icons.more_vert),
                     );
                   }
               ))


         )




        ],
      ),


    );
  }


}