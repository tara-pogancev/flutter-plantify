import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../const.dart';

class SingleTag extends StatelessWidget {
  const SingleTag({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 10,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0xFFBAEACA),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 0.9,
            vertical: kDefaultPadding * 0.3,
          ),
          child: Text(
            text,
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.w900,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
