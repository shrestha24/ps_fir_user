import 'package:flutter/material.dart';
import 'package:ps_fir_user/login.page1.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home: UserRegistration(),

    );
  }
}
