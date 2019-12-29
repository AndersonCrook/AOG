import 'package:AOG/Widgets/PopUpWidget.dart';
import 'package:flutter/material.dart';
import 'Widgets/InputWidget.dart';
import 'Widgets/LogoWidget.dart';

void main() => runApp(AOG());

class AOG extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alcool ou Gasolina',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          PopUp(),
          Input(label: "Álcool"),
          Input(label: "Gasolina"),
          Container(
            height: 50,
            margin: new EdgeInsets.symmetric(
              horizontal: 20.0, 
              vertical: 30.0
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25)
            ),
            child: FlatButton(child: Text(
              "Calcular",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 20
              ),
            )),
          )
        ],
      ),
    );
  }
}

class Label {
}