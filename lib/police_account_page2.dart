import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Police_Account_Page1 extends StatefulWidget {
  Police_Account_Page1 ({Key key, this.title}) : super (key : key);

  final String title;

  _Police_Account_Page1 createState() => _Police_Account_Page1();

}

class _Police_Account_Page1 extends State<Police_Account_Page1> {

  String name;

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
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 1.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    labelText: 'Designation',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blue
                      ),
                    ),
                    border: OutlineInputBorder(),
                  ),

                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                ),

              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 1.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    labelText: 'State',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blue
                      ),
                    ),
                    border: OutlineInputBorder(),
                  ),

                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                ),

              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 1.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    labelText: 'District',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blue
                      ),
                    ),
                    border: OutlineInputBorder(),
                  ),

                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                ),

              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 1.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    labelText: 'Police Station',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blue
                      ),
                    ),
                    border: OutlineInputBorder(),
                  ),

                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        elevation: 5.0,
        child: new Icon(Icons.chevron_right),
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => ()
          ));
        },
      ),

    );
  }

}
