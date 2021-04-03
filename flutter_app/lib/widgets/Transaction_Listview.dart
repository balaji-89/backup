import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionListView extends StatelessWidget {
  final String id;
  final String name;
  final double amount;
  final DateTime date;

  TransactionListView(this.id, this.name, this.amount, this.date);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Row(
        children: <Widget>[
          Container(

            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.purple,
                width: 2,
              ),
            ),
            child: Text(
              '\$ $amount',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.purple),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                date.toString(),
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
