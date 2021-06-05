import 'package:flutter/material.dart';
import "package:micro_mobile/micro_mobile.dart";
import "./models/transaction_model.dart";
import "./widgets/transaction_card.dart";

class PaymentsScreen extends StatefulWidget {
  late final Store store;

  PaymentsScreen({Key? key, required this.store}) : super(key: key);

  @override
  _PaymentsScreenState createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
  final transactions = <Transaction>[];

  @override
  void initState() {
    super.initState();

    widget.store.addEventListener("TRANSACTION_ADD", (Transaction payload) {
      addTransation(payload);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.only(right: 20, left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    widget.store.emit('NAVIGATE_HOME');
                  },
                  icon: Icon(Icons.arrow_back)),
              Container(
                height: 70,
                alignment: Alignment.center,
                child: Text(
                  "Платежи",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              IconButton(
                  onPressed: () {
                    widget.store.emit('NAVIGATE_PROFILE');
                  },
                  icon: Icon(Icons.person))
            ],
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: ListView.builder(
                    itemCount: transactions.length,
                    itemBuilder: (context, index) {
                      var transaction = transactions[index];

                      return Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: TransactionCard(
                            name: transaction.name,
                            date: transaction.date,
                            value: transaction.value),
                      );
                    })),
          ),
        ],
      ),
    )));
  }

  void addTransation(Transaction transaction) {
    setState(() {
      transactions.add(transaction);
    });
  }
}
