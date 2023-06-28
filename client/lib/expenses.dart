import 'package:client/widgets/chart.dart';
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
        isScrollControlled: true,
        useSafeArea: true,
        context: context,
        builder: (ctx) {
          return NewExpense(onAddExpense: _addExpense);
        });
  }

  void _addExpense(Expense expense) {
    setState(() {
      _registerExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    final index = _registerExpenses.indexOf(expense);
    setState(() {
      _registerExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 2),
        content: const Text('Expense removed'),
        action: SnackBarAction(
            label: 'Undo',
            onPressed: () {
              setState(() {
                _registerExpenses.insert(index, expense);
              });
            }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
   final width =  MediaQuery.of(context).size.width;


    Widget mainContent = const Center(
      child: Text('No expenses added yet! Start adding some!'),
    );

    if (_registerExpenses.isNotEmpty) {
      mainContent = ExpensesList(
          expenses: _registerExpenses, onRemoveExpense: _removeExpense);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseModal,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: width < 600 ? Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          // const Text('Chart'),
          Chart(expenses: _registerExpenses),
          const SizedBox(
            height: 20,
          ),
          Expanded(child: mainContent)
        ],
      ) : Row(
         children: [
          const SizedBox(
            height: 20,
          ),
          // const Text('Chart'),
          Expanded(child: Chart(expenses: _registerExpenses),),
          const SizedBox(
            height: 20,
          ),
          Expanded(child: mainContent)
        ],
      ),
    );
  }
}
