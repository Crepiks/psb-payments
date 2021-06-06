import 'package:flutter/material.dart';

class BalanceBlock extends StatelessWidget {
  final String name;
  final String balance;

  const BalanceBlock({required this.name, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF3758D3),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
            padding: EdgeInsets.only(right: 50),
          ),
          SizedBox(height: 25),
          Container(
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Welcome back,\n',
                    style: TextStyle(
                      color: Color(0xFFB2C3FF),
                    ),
                  ),
                  TextSpan(
                    text: name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Text(
            'Your balance',
            style: TextStyle(
              color: Color(0xFFB2C3FF),
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '\$ $balance',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
