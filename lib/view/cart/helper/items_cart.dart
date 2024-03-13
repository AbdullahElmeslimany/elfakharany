import 'package:flutter/material.dart';

itemsCart(BuildContext context) {
  return Container(
    height: 120,
    width: MediaQuery.sizeOf(context).width,
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          width: MediaQuery.sizeOf(context).width - 180,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "name",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "الكمية 1",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  Text(
                    "150 جنيه",
                    style: TextStyle(
                        color: Colors.amber[800],
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            "assets/images/2.jpg",
            width: 135,
            height: 120,
            fit: BoxFit.fitHeight,
          ),
        ),
      ],
    ),
  );
}
