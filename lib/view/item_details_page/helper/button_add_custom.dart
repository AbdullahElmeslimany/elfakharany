import 'package:elfakharany/view/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'exstantion_items.dart';

buttonCastomAdd(BuildContext context, name) {
  return Center(
    child: MaterialButton(
      onPressed: () {
        Get.defaultDialog(
            actions: [
              MaterialButton(
                onPressed: () {
                  Get.back();
                },
                child: Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                        child: Text(
                      "الغاء",
                      style: TextStyle(color: Colors.white),
                    ))),
              ),
              MaterialButton(
                onPressed: () {
                  Get.to(HomePage());
                },
                child: Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 144, 211),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                        child: Text(
                      "اضافة",
                      style: TextStyle(color: Colors.white),
                    ))),
              )
            ],
            title: "اضافة الي العربة",
            content: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  Text("$adda"),
                ],
              ),
            ));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        height: 40,
        width: MediaQuery.sizeOf(context).width - 70,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 146, 190),
            borderRadius: BorderRadius.circular(20)),
        child: const Center(
          child: Text(
            "اضافة للعربه",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    ),
  );
}
