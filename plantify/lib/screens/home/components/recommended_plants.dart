
import 'package:flutter/cupertino.dart';
import 'package:plantify/screens/home/components/recommended_plant_card.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
