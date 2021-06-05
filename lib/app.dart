import 'package:flutter/material.dart';
import 'package:payments/screens/transactions_screen.dart';

class PaymentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('This is Payments Screen'),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (c) => TransactionsScreen(),
                ),
              ),
              child: Text('Перейти на страницу транзакции'),
            )
          ],
        ),
      ),
    );
  }
}
