import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;
  //constructor
  TransactionList(this.transactions, this.deleteTx);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemBuilder: (ctx, index) {
        return Card(
          elevation: 10,
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Padding(
                  padding: EdgeInsets.all(6),
                  child: FittedBox(
                      child: Text("\$${transactions[index].amount}"))),
            ),
            // ignore: deprecated_member_use
            title: Text(transactions[index].title,
                style: Theme.of(context).textTheme.headline6),
            subtitle: Text(DateFormat.yMMMd().format(transactions[index].date)),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: () => deleteTx(transactions[index].id),
            ),
          ),
        );
      },
      itemCount: transactions.length,
    ));
  }
}
