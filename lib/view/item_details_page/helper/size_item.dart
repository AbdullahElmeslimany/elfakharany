import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:radio_grouped_buttons/custom_buttons/custom_radio_buttons_group.dart';

sizeItem(BuildContext context, List<String> buttonList) {
  return Container(
    padding: const EdgeInsets.all(15),
    width: MediaQuery.of(context).size.width,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "الحجم",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const Gap(13),
        Center(
          child: CustomRadioButton(
            horizontal: true,
            buttonLables: buttonList,
            buttonValues: buttonList,
            radioButtonValue: (value, index) {
              print("Button value " + value.toString());
            },
            enableShape: true,
            buttonSpace: 10,
            buttonColor: Colors.white,
            selectedColor: const Color.fromARGB(255, 252, 168, 59),
          ),
        ),
      ],
    ),
  );
}
