import 'package:flutter/material.dart';
import 'package:plantify/components/body.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
    );
  }
}
