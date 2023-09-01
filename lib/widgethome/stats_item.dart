import 'package:flutter/material.dart';

class StatsItem extends StatelessWidget {
  StatsItem(this.title, this.amount);

  final title;
  final amount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22)),
        Text(amount, style: TextStyle(fontSize: 14))
      ],
    );
  }
}
