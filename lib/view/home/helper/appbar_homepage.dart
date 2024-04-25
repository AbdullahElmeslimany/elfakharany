import 'package:elfakharany/view/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:get/get.dart';

import '../homepage.dart';

appBarCustom({required id}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          InkWell(
            onTap: () {
              Get.to(CartPage(id: id));
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
        onPressed: () {
          scaffoldKey.currentState?.openDrawer();
        },
      ),
    ],
  );
}
