
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pockemon/widget/card_widget.dart';
import 'package:pockemon/widget/my_title.dart';

import '../widget/feature_title_text.dart';
import '../widget/feature_value_text.dart';

class detailsPage extends StatelessWidget {
  const detailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Icon(
              Icons.favorite_border_rounded,
              color: Colors.pink,
            ),
          )
        ],
      ),
      body: Container(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 300.0,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          myTitle(text: 'pockemon name', color: Colors.white),
                          Row(
                            children: [
                              cardWidget(text: 'fire'),
                              Container(
                                width: 5.0,
                              ),
                              cardWidget(text: 'water'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                              padding: EdgeInsets.only(top: 20.0),
                              child: Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  featuredTitleText(text: "Height"),
                                  featuredTitleText(text: "Weigth"),
                                  featuredTitleText(text: "Candy"),
                                  featuredTitleText(text: "Egg"),
                                ],
                              )),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                featureValueText(text: "hValue"),
                                featureValueText(text: "wValue"),
                                featureValueText(text: "cValue"),
                                featureValueText(text: "eValue"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 120.0,
              child: Container(
                child: Hero(
                  tag: "pk001",
                  child: Image.network(
                    "http://www.serebii.net/pokemongo/pokemon/001.png",
                    height: 180.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
