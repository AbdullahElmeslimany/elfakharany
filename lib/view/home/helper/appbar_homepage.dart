import 'package:elfakharany/view/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:get/get.dart';

appBarCustom() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          InkWell(
            onTap: () {
              Get.to(const CartPage());
            },
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(
                "assets/icons/buy.png",
                height: 35,
              ),
            ),
          ),
        ],
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
