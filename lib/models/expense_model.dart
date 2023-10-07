class Expense {
  final String id;
  final double amount;
  final String title;
  final String description;
  final DateTime date;
  final String categoryId;
  final String userId;

  Expense({
    required this.id,
    required this.title,
    required this.amount,
    required this.description,
    required this.date,
    required this.categoryId,
    required this.userId,
  });

  factory Expense.fromMap(Map<String, dynamic> map) {
    return Expense(
      id: map['id'] as String,
      amount: map['amount'] as double,
      title: map['title'] as String,
      description: map['description'] as String,
      date: DateTime.parse(map['date'] as String),
      categoryId: map['categoryId'] as String,
      userId: map['userId'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'amount': amount,
      'title': title,
      'description': description,
      'date': date.toIso8601String(),
      'categoryId': categoryId,
      'userId': userId,
    };
  }
}
