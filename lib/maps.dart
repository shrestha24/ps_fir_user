import 'package:flutter/material.dart';

class MapsDemo extends StatefulWidget {
  MapsDemo() : super();

  final String title = "Maps Demo";

  @override
  MapsDemoState createState() => MapsDemoState();

  }

  class MapsDemoState extends State<MapsDemo> {

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            backgroundColor: Colors.blue,
          ),
          body: Container(),
        ),
      ),

    }
  }

}