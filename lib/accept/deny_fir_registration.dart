import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double _preferedHeight = 100.0;

  String title;
  Color gradientBegin, gradientEnd;

  GradientAppBar({this.title, this.gradientBegin, this.gradientEnd}) :
        assert(title != null),
        assert(gradientBegin != null),
        assert(gradientEnd != null);



  @override
  Widget build(BuildContext context) {
    return Container(
      height: _preferedHeight,
      alignment: Alignment.center,
      padding: EdgeInsets.only(top:20.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            gradientBegin,
            gradientEnd
          ]
        )
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}