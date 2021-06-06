import 'package:flutter/material.dart';
import "package:micro_mobile/micro_mobile.dart";
import 'package:payments/app.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final Store store = Store();

  App() {
    store.registerEvent('TRANSACTION_ADD');
    store.registerEvent('NAVIGATE_PROFILE');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Payments Micro App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PaymentsScreen(
          store: store,
        ));
  }
}
