import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final dateFormat = DateFormat.yMEd();

const uuid = Uuid();

enum Category { food, travels, leisure, work }

const categoryIcons = {
  Category.food: Icons.fastfood,
  Category.travels: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return dateFormat.format(date);
  }

  // IconData get icon => categoryIcons[category]!;
}