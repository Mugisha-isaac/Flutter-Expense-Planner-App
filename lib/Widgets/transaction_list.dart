import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        // child: SingleChildScrollView(
        // you can use List view for short list but for long list it's better to use List view builder
        // cool thanks to flutter engineers for this optimistion
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Card(
              child: Row(children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple, width: 2)),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '\$${transactions[index].amount}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple),
                  ),
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        transactions[index].title,
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        transactions[index].date.toString(),
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      )
                    ])
              ]),
            );
          },
          itemCount: transactions.length,
          // children: transactions.map((tx) {}).toList(),
        ));
    // )));
  }
}
