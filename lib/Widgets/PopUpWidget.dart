import 'package:flutter/Material.dart';
import 'ButtonWidget.dart';

class PopUp extends StatelessWidget {

  Function reset;
  var result = "";

  PopUp({
    @required this.result,
    @required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:new EdgeInsets.symmetric(vertical: 25.0) ,
      margin: new EdgeInsets.symmetric(horizontal: 20.0),
      height: 210,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25)
      ),
      child: ListView(
        children: <Widget>[
          Text(
            result,
            textAlign: TextAlign.center,
            style: TextStyle(
              
              color: Theme.of(context).primaryColor,
              fontSize: 45,
              fontFamily: "Big Shoulders Display"
            ),
          ),
          ButtonWidget(busy: false, invert: true ,func: reset, text: "Calcular Novamente",)
        ],
      ),
    );
  }
}