import 'package:expard/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  // Constructor
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
              child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purpleAccent,
                    width: 2,
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Text(
                  '\$${transactions[index].amount}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purpleAccent,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    transactions[index].title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    DateFormat.yMMMMd().format(transactions[index].date) +
                        ', ' +
                        DateFormat.jms().format(transactions[index].date),
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ));
        },
        itemCount: transactions.length,
      ),
    );
  }
}