import 'package:flutter/material.dart';

searchFieldCustom() {
  return Container(
    height: 38,
    // width: MediaQuery.sizeOf(context).width - 25,
    margin: const EdgeInsets.all(9),
    child: TextFormField(
      readOnly: true,
      onTap: () {
        print("ahhhhhh");
      },
      cursorHeight: 13,
      style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        suffixIcon: const Icon(Icons.search_rounded),
        filled: true,
        fillColor: Colors.grey.shade100,
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        labelText: "ابحث عن ما تريد",
      ),
      textAlign: TextAlign.end,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'يرجي ادخال اميل';
        }
        return null;
      },
    ),
  );
}
