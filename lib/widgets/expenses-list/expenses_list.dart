import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses-list/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onDeleteExpense,
  });

  final List<Expense> expenses;
  final void Function(Expense expense) onDeleteExpense;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (cxt, index) => Dismissible(
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.5),
          margin: Theme.of(context).cardTheme.margin,
          child: Center(child: Text('Deleting'),),
        ),
        key: ValueKey(expenses[index]),
        child: ExpensesItem(expense: expenses[index]),
        onDismissed: (direction) => onDeleteExpense(expenses[index]),
      ),
    );
  }
}
