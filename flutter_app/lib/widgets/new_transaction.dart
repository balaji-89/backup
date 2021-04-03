import'package:flutter/material.dart';
import '../models/Tansaction_data.dart';
import '../widgets/Transaction_Listview.dart';
import 'Text_field.dart';

class NewTransaction extends StatefulWidget {
  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  List<TransactionData> transactionData = [
    TransactionData(
      id: '01',
      name: 'shoes',
      amount: 250,
      date: DateTime.now(),
    ),
    TransactionData(
      id: '02',
      name: 'Bike',
      amount: 300,
      date: DateTime.now(),
    ),
    TransactionData(
      id: '02',
      name: 'laptop',
      amount: 400       ,
      date: DateTime.now(),
    ),
  ];

  addData(name, amount) {
    var newData =
    TransactionData(id: amount,
      name: name,
      amount: double.parse(amount),
      date: DateTime.now(),);


    setState(() {
      transactionData.add(newData);
    });
  }

    Widget callingTransactionListView(var idx) {
    var newData=transactionData[idx];
    return TransactionListView(newData.id,newData.name,newData.amount,newData.date);

  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextInput(addData),
        Container(
          height: 350,
          child: ListView.builder(
            itemBuilder: (ctx, index) {
              return Column(children: <Widget>[
                callingTransactionListView(index),

              ],

              );
            },
            itemCount: transactionData.length,
          ),
        ),
      ],
    );
  }
}
