import 'package:flutter/material.dart';

class myTitle extends StatelessWidget {
  final String text;
  final Color color;
  const myTitle({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      child: Text(
        text,
        // ignore: prefer_const_constructors
        style: TextStyle(
            fontSize: 34.0, fontWeight: FontWeight.bold, color: color),
      ),
    );
  }
}
