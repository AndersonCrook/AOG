import 'package:flutter/Material.dart';

class ButtonWidget extends StatelessWidget {
  
  var busy = false;
  var invert = false;
  Function func;
  var text = "";

  ButtonWidget({
    @required this.busy,
    @required this.invert,
    @required this.func,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return busy 
    ? Container(
        alignment: Alignment.center,
        height: 50,
        child: CircularProgressIndicator(
          backgroundColor: Colors.white
        ),
      )
    :
    Container(
      height: 50,
      margin: new EdgeInsets.symmetric(
        horizontal: 30.0, 
        vertical: 40.0
      ),
      decoration: BoxDecoration(
        color:invert ? Theme.of(context).primaryColor : Colors.white,
        borderRadius: BorderRadius.circular(25)
      ),
      child: FlatButton(
        onPressed: func,
        child: Text(
          text,
          style: TextStyle(
            color:invert ? Colors.white : Theme.of(context).primaryColor,
            fontSize: 20
          ),
        )
        //onPressed: func,
      ),
    );
  }
}