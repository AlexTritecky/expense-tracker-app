import 'package:client/models/expense_model.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({Key? key, required this.expense}) : super(key: key);

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 20,
        ),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                const Spacer(
                  flex: 1,
                ),
                Row(children: [
                  Icon(categoryIcons[expense.category]),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(expense.formattedDate),
                ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
