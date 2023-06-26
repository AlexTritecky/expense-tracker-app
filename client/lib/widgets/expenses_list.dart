import 'package:client/models/expense_model.dart';
import 'package:client/widgets/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({Key? key, required this.expenses}) : super(key: key);

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (ctx, index) => ExpenseItem(
              expense: expenses[index],
            ));
  }
}
