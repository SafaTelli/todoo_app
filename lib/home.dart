import 'package:flutter/material.dart';
import 'package:fluttertodo/CardList.dart';

class HomePage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }


}


class HomePageState extends State<HomePage>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      backgroundColor: Colors.deepPurple,
      body: Column(

        children: <Widget>[

          Padding(padding: EdgeInsets.only(top : 70.0,left: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Good Morning",style: TextStyle(color: Colors.white,fontSize: 35),) ,
              Text("Safa Telli",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35.0),) ,
              Padding(
                padding: EdgeInsets.only(top: 50),
                child:
                    Row(children: <Widget>[
                      Padding(padding: EdgeInsets.all(5.0),
                      child: Text("TODAY TASK TODO",style: TextStyle(color: Colors.white70,fontSize: 15.0),) ,),
                      Padding(padding: EdgeInsets.all(5.0),child:
                      Text("02 NOVEMBER 2020",style: TextStyle(color: Colors.white,fontSize: 15.0),) ,),

                    ],)
              ),


            ],
          ),),
          CardList()


        ],

      ),
    );
  }


}