import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

appBarCustom() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
        icon: const Icon(Icons.settings),
        onPressed: () {},
      ),
      FadeInDownBig(
        child: Image.asset(
          "assets/images/logo-remove.png",
          height: 65,
        ),
      ),
      IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ),
    ],
  );
}
