import 'package:flutter/material.dart';

class cardWidget extends StatelessWidget {
  final String text;
  const cardWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
      margin: EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.circular(25)),
      child: Text(
        text,
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );
  }
}
