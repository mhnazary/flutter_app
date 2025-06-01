import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/expenses_model.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});
  @override
  State<StatefulWidget> createState() {
    return _AddExpense();
  }
}

class _AddExpense extends State<AddExpense> {
  var enteredTitle = '';
  var enterAmount;
  // var date = DateTime.now();
  Catagory _SelectedCatagory = Catagory.leisure;

  void saveTitleInput(String inputValue) {
    enteredTitle = inputValue;
  }

  void saveAmount(String inputValue) {
    enterAmount = inputValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            onChanged: saveTitleInput,
            maxLength: 50,
            decoration: InputDecoration(label: Text('Title')),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  onChanged: saveAmount,
                  keyboardType: TextInputType.number,
                  maxLength: 5,
                  decoration: InputDecoration(
                    label: Text('Amount'),
                    prefixText: '\$ ',
                  ),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('select Date'),
                    IconButton(
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          firstDate: DateTime(2020),
                          lastDate: DateTime.now(),
                        );
                      },
                      icon: Icon(Icons.calendar_month),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: DropdownButton(
                  isExpanded: true,
                  value: _SelectedCatagory,
                  items:
                      Catagory.values
                          .map(
                            (category) => DropdownMenuItem(
                              value: category,
                              child: Text(category.name.toUpperCase()),
                            ),
                          )
                          .toList(),
                  onChanged: (value) {
                    setState(() {
                      if (value == null) {
                        return;
                      }
                      _SelectedCatagory = value;
                    });
                  },
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              ),
              SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {
                  print(enteredTitle);
                },
                child: Text('Save Expense'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
