import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:expense_planner/transaction.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Transaction> transactions = [
      Transaction(
        id: 't1',
        title: 'New Shoes',
        amount: 2500.00,
        date: DateTime.now(),
      ),
      Transaction(
        id: 't2',
        title: 'Weekly Groceries',
        amount: 3500.50,
        date: DateTime.now(),
      ),
    ];

    final titleController = TextEditingController();
    final amountController = TextEditingController();

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
          Card(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      hintText: 'Title',
                    ),
                    controller: titleController,
                  ),
                  TextField(
                    decoration: const InputDecoration(hintText: 'Amount'),
                    controller: amountController,
                    keyboardType: TextInputType.number,
                  ),
                  TextButton(
                    onPressed: () {
                      print(titleController.text);
                    },
                    child: const Text('Add Transaction'),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 2.0,
                        ),
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Ksh.${tx.amount}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    // const SizedBox(width: 20.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tx.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          DateFormat.yMMMMd().format(tx.date),
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
