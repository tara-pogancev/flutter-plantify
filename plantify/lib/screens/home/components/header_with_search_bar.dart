import 'package:flutter/material.dart';
import 'package:plantify/const.dart';

Container headerWithSearchBar(Size size) {
  return Container(
    margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
    height: size.height * 0.2,
    child: Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding),
          height: size.height * 0.2 - 27,
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36))),
          child: Row(
            children: <Widget>[
              Text(
                'Hi Tara!',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
              Spacer(),
              Image.asset(
                'assets/images/profile-photo.png',
                width: 60,
                height: 60,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            alignment: Alignment.center,
            height: 54,
            margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.25)),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(color: kPrimaryColor.withOpacity(0.8)),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                suffixIcon: Icon(
                  Icons.search,
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
