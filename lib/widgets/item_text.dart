import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



class ItemText extends StatelessWidget {
  final bool check;
  final String text;


  ItemText(
    this.check,
    this.text,
  );

  Widget _buildText(BuildContext context) {
    if (check) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            text,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 22,
                color: Colors.grey,
                decoration: TextDecoration.lineThrough),
          ),
        ],
      );
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          text,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ],
    );
  }

  
  

  @override
  Widget build(BuildContext context) {
    return _buildText(context);
  }
}
