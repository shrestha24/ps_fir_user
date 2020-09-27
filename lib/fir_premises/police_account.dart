import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Police_Account extends StatelessWidget {
  Police_Account ({Key key, this.title}) : super (key : key);

  final String title;

  _Police_Account createState() => _Police_Account();

}

 class _Police_Account extends State<Police_Account> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: <Widget>[

              SizedBox(
                height: 20.0,
              ),

              CircleAvatar(
              backgroundColor: Colors.blue,
                radius: 20.0,
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 1.0),
                child: Divider(),
              )

              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 1.0),
                child: TextField(
                  decoration: ,
                ),
              )
            ],

          ),
        ),
      ),


    );
  }

 }
