import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 60,),

        Image.asset("assets/images/aog-white.png", height: 80,),

        SizedBox( height: 10,),

        Text(
          "Alcool ou Gasolina",
          textAlign: TextAlign.center,
          style:TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontFamily: "Big Shoulders Display"
          ),
        )
      ],
    );
  }
}