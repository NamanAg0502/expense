import 'package:flutter/foundation.dart';
import 'package:expense/models/expense_model.dart';

class ExpenseProvider with ChangeNotifier {
  List<Expense> _expenses = [];

  List<Expense> get expenses {
    return [..._expenses];
  }

  // Function to add a new expense.
  void addExpense(Expense expense) {
    _expenses.add(expense);
    notifyListeners();
  }

  // Function to delete an expense by ID.
  void deleteExpense(String expenseId) {
    _expenses.removeWhere((expense) => expense.id == expenseId);
    notifyListeners();
  }

  // Function to update an existing expense.
  void updateExpense(Expense updatedExpense) {
    final index =
        _expenses.indexWhere((expense) => expense.id == updatedExpense.id);
    if (index != -1) {
      _expenses[index] = updatedExpense;
      notifyListeners();
    }
  }
}
