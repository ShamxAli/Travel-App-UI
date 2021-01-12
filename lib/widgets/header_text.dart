import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {

  final text;
  HeaderText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.grey),
    );
  }
}
