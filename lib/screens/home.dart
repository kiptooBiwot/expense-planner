import 'package:expense_planner/widgets/user_transactions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Planner'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: const Card(
              child: Text('Chart!'),
              elevation: 5.0,
            ),
          ),
          const UserTransactions(),
        ],
      ),
    );
  }
}
