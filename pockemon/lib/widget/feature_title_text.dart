import 'package:flutter/material.dart';

class featuredTitleText extends StatelessWidget {
  final String text;
  const featuredTitleText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        "$text :",
        style: TextStyle(color: Colors.blueGrey, fontSize: 16.0),
      ),
    );
  }
}
