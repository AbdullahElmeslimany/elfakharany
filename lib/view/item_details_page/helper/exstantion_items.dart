import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';

extantionItems(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(right: 15, top: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "الاضافات",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const Text(
          "تتم اضافته الي المكونات الاساسية",
          style: TextStyle(fontSize: 13, color: Colors.grey),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width / 2,
          child: CustomCheckBoxGroup(
              horizontal: true,
              buttonValuesList: const [
                "سكر",
                "قشطة",
                "مكسرات",
                "لبن",
                "لوتس",
                "جوز هند",
              ],
              buttonLables: const [
                "سكر",
                "قشطة",
                "مكسرات",
                "لبن",
                "لوتس",
                "جوز هند",
              ],
              checkBoxButtonValues: (values) {
                print(values);
              },
              selectedColor: const Color.fromARGB(255, 252, 167, 57),
              unSelectedColor: Colors.white),
        )
      ],
    ),
  );
}
