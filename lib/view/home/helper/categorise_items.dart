import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

categoriseItems(List<dynamic> items) {
  return FadeInRightBig(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.all(10),
            child: const Text("الاقسام",
                style: TextStyle(fontWeight: FontWeight.bold))),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.all(5),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent[200],
                    borderRadius: BorderRadius.circular(9)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(9),
                            topRight: Radius.circular(9)),
                        child: Image.asset(
                          items[index]["image"],
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(items[index]["name"]),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}
