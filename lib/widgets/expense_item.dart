import 'package:expense/models/expense_model.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  final Expense expense;
  final Function onDeletePressed;
  final Function onEditPressed;

  final Color backgroundColor;
  final TextStyle titleStyle;
  final TextStyle amountStyle;
  final EdgeInsets padding;

  ExpenseItem({
    super.key,
    required this.expense,
    required this.onDeletePressed,
    required this.onEditPressed,
    this.backgroundColor = Colors.white,
    this.titleStyle = const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    this.amountStyle = const TextStyle(
      fontSize: 16,
      color: Colors.green,
    ),
    this.padding = const EdgeInsets.all(16),
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: padding,
        child: ListTile(
          title: Text(
            expense.title,
            style: titleStyle,
          ),
          subtitle: Text(
            expense.date.toString(), // Customize this as needed
            style: const TextStyle(fontSize: 14),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () => onEditPressed(expense),
              ),
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () => onDeletePressed(expense.id),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
