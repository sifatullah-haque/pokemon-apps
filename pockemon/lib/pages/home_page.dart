import 'package:flutter/material.dart';
import 'package:pockemon/datasource/pockemon_datasource.dart';

import '../widget/my_title.dart';
import '../widget/pockemon_card.dart';

class homePage extends StatelessWidget {
  homePage({
    super.key,
  });
  List<Map?>? pokemon = PockemonDatasource.pockemos;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            const Padding(
              padding: EdgeInsets.only(right: 18.0),
              child: Icon(
                Icons.bento_rounded,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                flex: 1,
                child: myTitle(text: 'Pokedex', color: Colors.black),
              ),
              Expanded(
                flex: 12,
                child: Container(
                  child: GridView.builder(
                    itemCount: pokemon!.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                      crossAxisCount: 2,
                      childAspectRatio: 12 / 10,
                    ),
                    itemBuilder: (context, index) => pockemonCard(
                      nam: "${pokemon![index]!["name"]}",
                      types: [
                        pokemon![index]!.containsKey("type")
                            ? "${pokemon![index]!["type"]![0]}"
                            : "No Power",
                      ],
                      imgUrl: "${pokemon![index]!["img"]}",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
