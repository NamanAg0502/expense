import 'package:flutter/material.dart';

enum ToastType { success, error, info, warning }

class CustomToast extends StatelessWidget {
  final String message;
  final ToastType type;

  const CustomToast({super.key, required this.message, required this.type});

  Color _getBackgroundColor() {
    switch (type) {
      case ToastType.success:
        return Colors.green;
      case ToastType.error:
        return Colors.red;
      case ToastType.info:
        return Colors.blue;
      case ToastType.warning:
        return Colors.orange;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: _getBackgroundColor(),
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        child: Text(
          message,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }

  static void showToast(BuildContext context, String message, ToastType type) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: CustomToast(message: message, type: type),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
