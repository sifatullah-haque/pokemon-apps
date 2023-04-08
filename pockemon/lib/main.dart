import 'package:flutter/material.dart';
import 'package:pockemon/pages/details_page.dart';

import 'pages/home_page.dart';
import 'widget/pockemon_card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: homePage(),
    );
  }
}
