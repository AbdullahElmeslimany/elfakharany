import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

cardStartHomepage(BuildContext context) {
  return Center(
    child: SizedBox(
      width: MediaQuery.sizeOf(context).width - 40,
      height: 190,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.maxFinite,
            height: 140,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 192, 192, 192), borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "الفخراني",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 27,
                              fontWeight: FontWeight.w700),
                        ),
                        Text("اسم ذو تاريخ",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.w800)),
                      ],
                    ),
                  ),
                  const Divider(color: Colors.grey),
                  const Gap(10),
                  Text("استمتع بكل مذاق في كل ملعقة",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade200,
                          fontWeight: FontWeight.w800))
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: 2),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/logo-remove.png"),
                  )),
            ),
          )
        ],
      ),
    ),
  );
}
