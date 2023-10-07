import 'package:expense/models/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionModal extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionModal({super.key, required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text(
          'Transactions',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Divider(),
        SizedBox(
          height: 300,
          child: ListView.builder(
            itemCount: transactions.length,
            itemBuilder: (ctx, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text(
                      '\$${transactions[index].amount.toStringAsFixed(2)}'),
                ),
                title: Text(transactions[index].title),
                subtitle: Text(
                  DateFormat.yMMMd().format(transactions[index].date),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
