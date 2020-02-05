import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main()async{
  Map data =await getData();
  print(data['location']);
//  String myData=data[0]['title'];




  runApp(new MaterialApp(
      title: "MYCLINC",
      home:new Scaffold(
        backgroundColor: Colors.pink.shade900,
        appBar: new AppBar(
          title: new Text("my Weather"),
          backgroundColor: Colors.deepPurple,
        ),
//      body: new Center(
//        child: new Text('data :$myData',style: TextStyle(
//          fontStyle: FontStyle.italic,
//          fontSize: 16.0,
//
//
//
//        ),),
//      ),
        body: new Container
          (
          margin: EdgeInsets.only(left: 22,top: 55),
          child: new Column(
            children: <Widget>[
              new Center(
                child:  new Icon(Icons.ac_unit,color: Colors.white,size: 44.0,),
              ),
              new Padding(padding: EdgeInsets.only(top: 55.0)),

              new Padding(padding: EdgeInsets.only(top: 55.0)),
              new Text("Name :${data['location']['name']}",style:
              TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 22.0,
                  color: Colors.white

              )

                ,),
              new Text("Country :${data['location']['country']}",style:
              TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 22.0,
                  color: Colors.white

              )

                ,),
              new Text("Region :${data['location']['region']}",style:
              TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 22.0,
                  color: Colors.white

              )

                ,),
              new Text("Lat :${data['location']['lat']}",style:
              TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 22.0,
                  color: Colors.white

              )

                ,),
              new Text("Lat :${data['location']['localtime']}",style:
              TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 22.0,
                  color: Colors.white

              )

                ,),


            ],
          ),
        ),
      )


  ));

}
Future<Map> getData() async {
  String myurl = "http://api.weatherstack.com/current?access_key=96d857c447a50f9d324a36e8d0fef250&query=New%20York";
  http.Response response = await http.get(myurl);
  return json.decode(response.body);
}