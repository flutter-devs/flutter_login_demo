import 'package:AeologicSplashDemo/Constant/Constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen(this.userName);

  String userName;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color(0xFF54C5F8),
        title: new Text("Home"),
        actions: <Widget>[
          IconButton(
              icon: new Icon(Icons.power_settings_new),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(LOGIN_SCREEN);
              })
        ],
      ),
      body: new Stack(
        fit: StackFit.expand,

        children: <Widget>[



          new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: new Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text("Welcome,    ",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 20.0))
                  ,
                    new Row(children: <Widget>[ ],)

                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),


              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: new Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text(userName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0))
                  ],
                ),
              )
            ],
          ),


          Padding(
            padding: const EdgeInsets.all(40.0),
            child: new Center(
              child:  new Opacity(opacity: 0.5,child: new Image.asset("assets/images/logo.png",))

             ,
             ),
          ),
        ],
      ),
    );
    // TODO: implement build
  }
}
