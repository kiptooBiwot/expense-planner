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
        children: const [
          Card(
            child: Text('Chart!'),
          ),
          Card(
            child: Text('List of transactions!'),
          ),
        ],
      ),
    );
  }
}
