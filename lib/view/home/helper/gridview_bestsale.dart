import 'package:animate_do/animate_do.dart';
import 'package:elfakharany/view/item_details_page/item_details_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

gridviewMoreSales(list, id) {
  return FadeInUpBig(
    child: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Get.to(DitailsItemsPage(
                id: id,
                data: list[index],
                name: list[index]["name"],
                image: list[index]["image"]));
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.shade100),
            child: Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    child: Hero(
                      tag: list[index]["image"],
                      child: Image.asset(
                        list[index]["image"],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Hero(tag: list[index]["name"], child: Text(list[index]["name"]))
              ],
            ),
          ),
        );
      },
    ),
  );
}
