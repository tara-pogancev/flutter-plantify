import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantify/components/bottom_nav_menu.dart';
import 'package:plantify/const.dart';
import 'package:plantify/screens/home/components/recommended_plants.dart';
import 'package:plantify/screens/home/components/title_with_button.dart';

import 'components/single_tag.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Plant PICTURE
            Container(
              height: size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/plant01.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    color: kPrimaryColor.withOpacity(0.75),
                    blurRadius: 30,
                  ),
                ],
              ),
            ),

            // Plant DETAILS
            Container(
              margin: EdgeInsets.symmetric(
                vertical: kDefaultPadding * 1.5,
                horizontal: kDefaultPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Plant TAGS
                  Row(
                    children: [
                      SingleTag(
                        text: "House Plants",
                      ),
                      SingleTag(
                        text: "Russia",
                      ),
                    ],
                  ),

                  //Plant title and description
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Samantha",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean pharetra cursus sapien, vitae cursus ex varius quis. Proin eu risus purus. Aliquam placerat lorem vel diam pulvinar, nec semper velit gravida. Proin ut dignissim mi. Ut vitae tincidunt tortor. Nunc venenatis eget arcu vel varius. Morbi tincidunt ultricies ornare. Vivamus at volutpat mauris. Maecenas malesuada ac odio non consectetur.\n",
                  ),
                  Text(
                    "Proin ac odio felis. Etiam vitae ex eget est feugiat ullamcorper at vel mauris. Sed eleifend semper metus vitae sollicitudin. Etiam et nunc malesuada, venenatis sapien eget, feugiat nisi. Integer sed malesuada augue. Suspendisse sit amet mauris vitae justo placerat tristique. Praesent maximus ligula eget dapibus tincidunt. In ac mauris vitae tortor posuere rhoncus molestie a metus. Ut dignissim tellus rhoncus laoreet suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum at odio dignissim, fermentum est pretium, imperdiet orci. Ut fermentum mauris lacus, vitae consequat elit rhoncus at. Phasellus sodales purus leo, a rhoncus mauris pellentesque id. Aliquam erat volutpat.",
                  ),
                ],
              ),
            ),

            TitleWithButton(
              title: "Recommended",
              press: () {},
            ),
            RecommendedPlants(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: kPrimaryColor,
        child: const Icon(Icons.arrow_back),

      ),
      bottomNavigationBar: BottomNavMenu(),
    );
  }
}
