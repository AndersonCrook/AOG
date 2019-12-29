import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'ButtonWidget.dart';
import 'InputWidget.dart';

class SubmitForm extends StatelessWidget {
  var gasCtrl = new MoneyMaskedTextController();
  var alcCtrl = new MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  SubmitForm({
    @required this.gasCtrl,
    @required this.alcCtrl,
    @required this.busy,
    @required this.submitFunc,
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Input(
            label: "Álcool",
             ctrl: alcCtrl
          ),
          Input(
            label: "Gasolina",
            ctrl: gasCtrl
          ),
          ButtonWidget(busy: busy, invert: false , func: submitFunc, text: "Calcular")
        ],
      ),
    );
  }
}