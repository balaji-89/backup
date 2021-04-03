import 'package:flutter/material.dart';
class TextInput extends StatelessWidget {
  Function addingData;
  String inputName;
  String inputAmount;
  TextInput(this.addingData);

  @override

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        TextField(
          decoration: InputDecoration(labelText: 'Title'), //TextInput()
          onChanged: (values) {
            inputName = values;
          },
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Amount'), //TextInput()
          onChanged: (values) {
            inputAmount = values;
          },
        ),
        FlatButton(onPressed:(){addingData(inputName,inputAmount);}, child:Text('Add Transaction'),)

      ],
    );
  }
}
