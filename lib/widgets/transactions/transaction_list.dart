import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final List<Map<dynamic, dynamic>> mockData = [
    {
      'transactionName': 'Starbucks',
      'transactionPrice': -15,
      'transactionDate': '20 June 2021',
      'badgeColor': Color(0xFFA596FE)
    },
    {
      'transactionName': 'Friend',
      'transactionPrice': 25,
      'transactionDate': '20 June 2021',
      'badgeColor': Color(0xFFFF8385)
    },
    {
      'transactionName': 'A',
      'transactionPrice': 80,
      'transactionDate': '20 June 2021',
      'badgeColor': Color(0xFF4393FD)
    },
  ];

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
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TransactionItem(
                  price: mockData[index]['transactionPrice'],
                  name: mockData[index]['transactionName'],
                  date: mockData[index]['transactionDate'],
                  color: mockData[index]['badgeColor'],
                  key: UniqueKey(),
                ),
              ),
              itemCount: mockData.length,
            ),
          )
        ],
      ),
    );
  }
}

class TransactionItem extends StatelessWidget {
  final int price;
  final String name;
  final String date;
  final Color color;
  const TransactionItem(
      {Key? key,
      required this.price,
      required this.name,
      required this.date,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String parsedPrice;
    if (price > 0) {
      parsedPrice = price.toString();
    } else {
      parsedPrice = price.toString().substring(1);
    }

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
                  color: color,
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
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    date,
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
            price < 0 ? '-\$$parsedPrice' : '\$$parsedPrice',
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
