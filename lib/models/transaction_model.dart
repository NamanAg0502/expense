import 'package:cloud_firestore/cloud_firestore.dart';

class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final String category;

  Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  });

  // Create a Transaction object from a DocumentSnapshot
  factory Transaction.fromSnapshot(DocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    return Transaction(
      id: snapshot.id,
      title: data['title'],
      amount: data['amount'].toDouble(),
      date: data['date'].toDate(),
      category: data['category'],
    );
  }

  // Convert a Transaction object to a Map for Firestore storage
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'amount': amount,
      'date': date,
      'category': category,
    };
  }
}
