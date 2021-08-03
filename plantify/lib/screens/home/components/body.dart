import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plantify/screens/home/components/header_with_search_bar.dart';
import 'package:plantify/screens/home/components/recommended_plants.dart';
import 'package:plantify/screens/home/components/title_with_button.dart';

import 'featured_plant_card.dart';
import 'featured_plants.dart';

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
          RecommendedPlants(),
          TitleWithButton(
            title: "Featured plants",
            press: () {},
          ),
          FeaturedPlants(),
        ],
      ),
    );
  }
}
