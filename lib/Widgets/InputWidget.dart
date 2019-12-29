import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatelessWidget {
  var ctrl = new MoneyMaskedTextController();
  var label = "";
  Input({
    @required this.label,
    @required this.ctrl
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: <Widget>[
          Text(
            label,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontFamily: "Big Shoulders Display"
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child:TextFormField(
              keyboardType: TextInputType.number,
              controller: ctrl,
              style: TextStyle(
                color: Colors.white,
                fontSize: 45,
                fontFamily: "Big Shoulders Display" 
              ),
              decoration: InputDecoration(
                border: InputBorder.none
              ),
            ),
          )
        ],
      ),
    );
  }
}