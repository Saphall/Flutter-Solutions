import 'package:flutter/material.dart';

class ShowAllItems extends StatelessWidget {
  final String leftText;
  ShowAllItems({this.leftText});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$leftText',
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Show All',
              style: TextStyle(
                fontSize: 17,
                color: Colors.pink,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ));
  }
}
