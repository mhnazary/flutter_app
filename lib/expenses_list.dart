import 'package:flutter/widgets.dart';
import 'package:flutter_app/expense_item.dart';
import 'package:flutter_app/models/expenses_model.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});
  final List<Expense> expenses;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (cts, index) => ExpenseItem(expenses[index]),
    );
  }
}
