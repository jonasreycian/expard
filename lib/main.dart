import 'package:expard/models/transaction.dart';
import 'package:expard/widgets/new_transaction.dart';
import 'package:expard/widgets/tansaction_list.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:money/money.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('This is chart!'),
              elevation: 5,
            ),
          ),
          NewTransaction(),
          TransactionList(), 
        ],
      ),
    );
  }
}
