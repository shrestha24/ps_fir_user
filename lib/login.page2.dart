import 'package:ps_fir_user/login.page1.dart';
import 'package:flutter/material.dart';

class CaseDetails extends StatefulWidget {
  CaseDetails({Key key, this.title}) : super(key: key);

  final String title;

  _CaseDetailsPage createState() => _CaseDetailsPage();

}

class _CaseDetailsPage extends State<CaseDetails> {

  String titleCase;
  String description;
  String suspect;

  Widget build (BuildContext context) {
    return Scaffold (
      appBar: AppBar(),
          body: SingleChildScrollView(
        child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
         children: <Widget>[
        SizedBox(
          height: 80.0,
        ),
           Padding(
             padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
             child: TextField(
               decoration: InputDecoration(
                 labelText: 'Case Title',
                 enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.blue,
                   )
                 ),
                   border: OutlineInputBorder(),
               ),
               onChanged: (value) {
                 setState(() {
                   titleCase = value;
                 });
               },

             ),
           ),


           Padding(
             padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
             child: TextField(
               decoration: InputDecoration(
                 labelText: 'Case Description',
                 enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(
                       color: Colors.blue,
                     )
                 ),
                 border: OutlineInputBorder(),
               ),
               onChanged: (value) {
                 setState(() {
                   description = value;
                 });
               },

             ),
           ),

      Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Suspects(if any)',
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                )
            ),
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            setState(() {
              suspect = value;
            });
          },

        ),
      ),

      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: MaterialButton(
          child: Text('Submit',
            style: TextStyle(
              color: Colors.white,
            ),),
          color: Colors.blue,
          onPressed: () {

            print(titleCase);
            print(description);
            print(suspect);

          },
        ),
      ),

         ],
    ),
    ),
            floatingActionButton: FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
    ),
    );

  }

}