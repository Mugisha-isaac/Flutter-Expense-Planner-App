import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/services.dart';
import '../Widgets/user_transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  String titleInput = '';
  String amountInput = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: SingleChildScrollView(
            child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text(
                  'CHART!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                elevation: 5,
              ),
            ),
            UserTransactions(),
          ],
        )));
  }
}
