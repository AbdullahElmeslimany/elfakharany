import 'package:flutter/material.dart';

nameAndDetails(name) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
          margin: const EdgeInsets.all(18),
          child: Hero(
            tag: name,
            child: Text(
              name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )),
      Container(
        margin: const EdgeInsets.only(right: 15),
        child: const Text(
          '''لبن - بليلة - سكر - كريمة - مكسرات - قشطة - جوز هند''',
          style: TextStyle(fontSize: 13, color: Colors.grey),
        ),
      ),
    ],
  );
}
