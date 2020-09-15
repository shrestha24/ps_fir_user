import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ps_fir_user/main.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;


  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String email;
  String loginid;
  String mobileno;
  String otp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 80.0,
            ),
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 50.0,
            ),
             Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: Divider(),
            ),
           Padding(
             padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
             child: TextField(
               decoration: InputDecoration(
                 prefixIcon: Icon(Icons.email),
                 labelText: 'Email',
                 enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.blue
                   ),
                 ),
                 border: OutlineInputBorder(),
               ),
               onChanged: (value) {
                 setState(() {
                   email = value;
                 });
               },
             ),
           ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  labelText: 'LOGIN ID.',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blue
                    ),
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    loginid = value;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.keyboard),
                  labelText: 'MOBILE NO.',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blue
                    ),
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    mobileno = value;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  labelText: 'OTP',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blue
                    ),
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    otp = value;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: MaterialButton(
                child: Text('Submit',
                style: TextStyle(
                  color: Colors.,
                ),),
                color: Colors.blue,
                onPressed: () {
                  print(email);
                  print(loginid);
                  print(mobileno);
                  print(otp);
                },
              ),
            )
          ],
        ),
      ),
    );

  }
}