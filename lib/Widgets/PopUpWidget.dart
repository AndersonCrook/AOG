import 'package:flutter/Material.dart';

class PopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:new EdgeInsets.symmetric(vertical: 25.0) ,
      margin: new EdgeInsets.symmetric(horizontal: 20.0),
      height: 260,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25)
      ),
      child: ListView(children: <Widget>[
        Text(
          "Gasolina vale mais apena",
          textAlign: TextAlign.center,
          style: TextStyle(
            
            color: Theme.of(context).primaryColor,
            fontSize: 45,
            fontFamily: "Big Shoulders Display"
          ),
        ),
        Container(
          margin: new EdgeInsets.symmetric(
            horizontal: 50.0,
            vertical: 100.0
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(25)
          ),
          child: FlatButton(
            child: Text(
              "Calcular Novamente",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
            )
          ),
        ),
        
      ],),
    );
  }
}