import 'package:flutter/material.dart';
import 'package:payments/widgets/transactions/balance_block.dart';

class TransactionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  BalanceBlock(
                    name: 'Darkhan',
                    balance: '24,980.00',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
