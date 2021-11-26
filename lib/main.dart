import 'package:expense_planner/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ExpensePlanner());

class ExpensePlanner extends StatelessWidget {
  const ExpensePlanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Expenses',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.amber,
        fontFamily: 'Quicksand',
        // appBarTheme: ThemeData.light().textTheme.copyWith(headline6: const TextStyle(fontFamily: 'OpenSans'),),
      ),
      home: const Home(),
    );
  }
}
