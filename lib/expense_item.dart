import 'package:flutter/material.dart';
import 'package:flutter_app/models/expenses_model.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});
  final Expense expense;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            Text(expense.title),
            SizedBox(height: 8),
            Row(
              children: [
                Text('\$ ${expense.amount.toStringAsFixed(2)}'),
                Spacer(),
                Icon(Icons.alarm),
                SizedBox(width: 8),
                Text(expense.date.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
