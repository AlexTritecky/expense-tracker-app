import 'package:client/widgets/expenses_list.dart';
import 'package:client/models/expense_model.dart';
import 'package:client/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registerExpenses = [
    Expense(
        title: 'Flutter Course',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Cinema',
        amount: 10.99,
        date: DateTime.now(),
        category: Category.leisure),
    Expense(
        title: 'Burger',
        amount: 14.19,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        title: 'Paris',
        amount: 54.19,
        date: DateTime.now(),
        category: Category.travels),
  ];

  void _openAddExpenseModal() {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return const NewExpense();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 15, 249, 85),
                Color.fromARGB(255, 15, 249, 167),
                Color.fromARGB(255, 14, 248, 240)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: _openAddExpenseModal,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text('Chart'),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ExpensesList(expenses: _registerExpenses),
          )
        ],
      ),
    );
  }
}
