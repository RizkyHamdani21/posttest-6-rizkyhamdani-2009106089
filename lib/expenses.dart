// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({Key? key}) : super(key: key);

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("     Expenses\n(Not Ready Yet)"),
    );
  }
}
