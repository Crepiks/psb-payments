import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Today',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            height: 300,
            child: ListView.builder(
              itemBuilder: (context, number) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TransactionItem(
                  price: '15',
                  key: UniqueKey(),
                ),
              ),
              itemCount: 4,
            ),
          )
        ],
      ),
    );
  }
}

class TransactionItem extends StatelessWidget {
  final String price;
  const TransactionItem({Key? key, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFA596FE),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(
                  Icons.attach_money_sharp,
                  color: Colors.white,
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Starbucks',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    '20 June 2021',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            '-\$$price.00',
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
