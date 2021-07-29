import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plantify/screens/home/components/header_with_search_bar.dart';
import 'package:plantify/screens/home/components/recommended_plant_card.dart';
import 'package:plantify/screens/home/components/title_with_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //Screen dimensions
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          headerWithSearchBar(size),
          TitleWithButton(
            title: "Recommended",
            press: () {},
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SinglePlantCard(
                  title: "Samantha",
                  price: "450",
                  country: "Russia",
                  image: "assets/images/plant01.jpg",
                  press: () {},
                ),
                SinglePlantCard(
                  title: "Ageratum",
                  price: "230",
                  country: "Serbia",
                  image: "assets/images/plant03.jpg",
                  press: () {},
                ),
                SinglePlantCard(
                  title: "Bacopa",
                  price: "120",
                  country: "Italia",
                  image: "assets/images/plant04.jpg",
                  press: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
