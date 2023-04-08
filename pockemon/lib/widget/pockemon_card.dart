import 'package:flutter/material.dart';

import '../pages/details_page.dart';
import 'card_widget.dart';

class pockemonCard extends StatelessWidget {
  final String nam;
  final List<String> types;
  final String imgUrl;
  const pockemonCard({
    super.key,
    required this.nam,
    required this.types,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(
              MaterialPageRoute(
                builder: (context) => detailsPage(),
              ),
            )
            .then((_) => Future.delayed(Duration(milliseconds: 1000), () {}));
      },
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.red),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "$nam",
                      style: const TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  cardWidget(text: '${types[0]}'),
                  // cardWidget(text: '${powers[1]}'),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0.0,
            bottom: 0.0,
            child: Container(
              child: Hero(
                tag: "pk001",
                child: Image.network(
                  "$imgUrl",
                  height: 100.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
