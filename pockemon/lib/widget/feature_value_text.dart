import 'package:flutter/material.dart';

class featureValueText extends StatelessWidget {
  final String text;
  const featureValueText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        "$text",
        style: TextStyle(
            color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
