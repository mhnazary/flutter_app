import 'package:flutter/material.dart';
import 'package:flutter_app/add_expense.dart';
import 'package:flutter_app/expenses_list.dart';
import 'package:flutter_app/models/expenses_model.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<StatefulWidget> createState() {
    return _Expenses();
  }
}

class _Expenses extends State<Expenses> {
  final List<Expense> _RegisteredExpenses = [
    Expense(
      title: "flutter",
      amount: 9.9,
      date: DateTime(Duration.minutesPerHour),
      catagory: Catagory.food,
    ),
    Expense(
      title: "java course",
      amount: 9.9,
      date: DateTime(Duration.minutesPerHour),
      catagory: Catagory.food,
    ),
    Expense(
      title: "android course",
      amount: 9.9,
      date: DateTime(Duration.minutesPerHour),
      catagory: Catagory.food,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 24, 194, 232),
        title: Text('this is title'),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => AddExpense(),
              );
            },
            icon: Icon(Icons.add),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 15)),
        ],
      ),
      body: Column(
        children: [
          Text('chart column'),
          Expanded(child: ExpensesList(expenses: _RegisteredExpenses)),
        ],
      ),
    );
  }
}
