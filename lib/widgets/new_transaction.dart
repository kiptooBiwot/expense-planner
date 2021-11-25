import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function addTransaction;

  NewTransaction(this.addTransaction, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
                addTransaction(
                    titleController.text, double.parse(amountController.text));
              },
              child: const Text('Add Transaction'),
            ),
          ],
        ),
      ),
    );
  }
}
