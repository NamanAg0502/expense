import 'package:expense/constants/theme.dart';
import 'package:expense/models/expense_model.dart';
import 'package:expense/screens/others/expense/create_expense.dart';
import 'package:flutter/material.dart';
import 'package:expense/widgets/expense_item.dart';
import 'package:expense/providers/expense_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    // Use the Provider to get a reference to the ExpenseProvider.
    final expensesProvider = Provider.of<ExpenseProvider>(context);
    final expenses = expensesProvider.expenses;

    return GestureDetector(
      onVerticalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            enableDrag: true,
            useSafeArea: true,
            builder: (BuildContext context) {
              return const CreateExpense();
            },
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: IconButton(
                icon: const Icon(
                  Icons.add_circle_rounded,
                  // fill: ,
                  color: Colors.black,
                  size: 28,
                  weight: 100,
                ),
                onPressed: () {
                  showModalBottomSheet(
                    enableDrag: true,
                    useSafeArea: true,
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return const CreateExpense();
                    },
                  );
                },
              ),
            )
          ],
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: _buildExpenseList(expenses, expensesProvider, context),
      ),
    );
  }

  Widget _buildExpenseList(List<Expense> expenses,
      ExpenseProvider expensesProvider, BuildContext context) {
    if (expenses.isEmpty) {
      return Center(
        child: Text(
          'No expenses yet.',
          style: AppTheme.bodyText,
        ),
      );
    } else {
      return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (ctx, index) {
          final expense = expenses[index];

          return ExpenseItem(
            expense: expense,
            onDeletePressed: () {
              // Implement delete logic.
              expensesProvider.deleteExpense(
                  expense.id); // Example method for deleting an expense.
            },
            onEditPressed: () {
              // Implement edit logic.
              _navigateToExpenseEdit(context);
            },
          );
        },
      );
    }
  }

  void _navigateToExpenseEdit(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        // builder: (context) => ExpenseEditScreen(expense),
        builder: (context) => const CreateExpense(),
      ),
    );
  }
}
