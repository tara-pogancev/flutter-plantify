
import 'package:flutter/cupertino.dart';

import 'featured_plant_card.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SingleFeaturedPlantCard(
            title: "Annual Vinca",
            price: "630",
            country: "Germany",
            image: "assets/images/plant04.jpg",
            press: () {},
          ),
          SingleFeaturedPlantCard(
            title: "Eulalia Grass",
            price: "230",
            country: "Spain",
            image: "assets/images/plant05.jpg",
            press: () {},
          ),
          SingleFeaturedPlantCard(
            title: "American Marigold",
            price: "840",
            country: "USA",
            image: "assets/images/plant02.jpg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
