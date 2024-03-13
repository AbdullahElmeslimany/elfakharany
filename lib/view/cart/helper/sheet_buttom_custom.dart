import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../model_view/textfromfieldcustom.dart';

Container sheetButtomCustom(BuildContext context) {
  TextEditingController numberVisa = TextEditingController();
  return Container(
    padding: const EdgeInsets.all(15),
    width: MediaQuery.sizeOf(context).width,
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15))),
    child: SingleChildScrollView(
      child: Column(
        children: [
          const Text(
            "Visa",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Gap(15),
          textFromFieldcustom(
              width: MediaQuery.sizeOf(context).width - 30,
              controller: numberVisa,
              text: "Visa Name"),
          const Gap(15),
          textFromFieldcustom(
              length: true,
              numLength: 16,
              width: MediaQuery.sizeOf(context).width - 30,
              controller: numberVisa,
              text: "Visa Number"),
          const Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              textFromFieldcustom(
                  length: true,
                  numLength: 4,
                  width: MediaQuery.sizeOf(context).width / 2.2,
                  controller: numberVisa,
                  text: "Visa End Date"),
              textFromFieldcustom(
                  length: true,
                  numLength: 3,
                  width: MediaQuery.sizeOf(context).width / 2.2,
                  controller: numberVisa,
                  text: "Visa Secret")
            ],
          ),
          Container(
            height: 55,
            width: MediaQuery.sizeOf(context).width - 30,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.brown[500],
              borderRadius: BorderRadius.circular(15),
            ),
            child: MaterialButton(
              onPressed: () {},
              child: const Text(
                "اتمام الدفع",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
