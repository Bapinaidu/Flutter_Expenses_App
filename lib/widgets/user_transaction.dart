import 'package:flutter/material.dart';


import './new_transaction.dart';
import '../models/transaction.dart';


class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
final List<Transaction> _userTransaction = [
    Transaction(
      id: '1',
      title: 'New shoes',
      amount: 88.88,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Groceries',
      amount: 12.11,
      date: DateTime.now(),
    ),
    Transaction(
      id: '3',
      title: 'Clothes',
      amount: 69.88,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount){
    final newTx = Transaction(id: DateTime.now().toString(), title: txTitle, amount: txAmount, date: DateTime.now());

    setState(() {
      _userTransaction.add(newTx);
    });


  }


  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(_addNewTransaction),
      //TransactionList(_userTransaction),
    ],);
  }
}