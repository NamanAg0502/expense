import 'package:expense/screens/others/expense/create_expense.dart';
import 'package:expense/widgets/toast_widget.dart';
import 'package:flutter/material.dart';
import 'package:expense/screens/home/home_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String expense = '/expense';
  static const String createExpense = '/create-expense';
  static const String category = '/category';
  static const String budget = '/budget';
  static const String settings = '/settings';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      // case expense:
      //   return MaterialPageRoute(builder: (_) => ExpenseScreen());
      case createExpense:
        return MaterialPageRoute(builder: (_) => const CreateExpense());
      // case budget:
      //   return MaterialPageRoute(builder: (_) => BudgetScreen());
      // case settings:
      //   return MaterialPageRoute(builder: (_) => SettingsScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(title: Text('Expense Tracker')),
            body: Center(
              child: Text('Route not found!'),
            ),
          ),
        );
    }
  }

  // Custom function to navigate to a route with a toast message.
  static Future<void> navigateTo(BuildContext context, String routeName) async {
    try {
      await Navigator.of(context).pushNamed(routeName);
    } catch (e) {
      // Handle any navigation errors.
      showToast(context, 'Error navigating to $routeName', ToastType.error);
    }
  }

  // Function to display toast messages.
  static void showToast(BuildContext context, String message, ToastType type) {
    CustomToast.showToast(context, message, type);
  }
}
