import 'package:elfakharany/controller/bloc/select_value_cubit/select_value_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:radio_grouped_buttons/custom_buttons/custom_radio_buttons_group.dart';

sizeItem(BuildContext context, {required data}) {
  final cubit = BlocProvider.of<SelectValueCubit>(context);
  return BlocBuilder<SelectValueCubit, SelectValueState>(
    builder: (context, state) {
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
                buttonLables: cubit.buttonList,
                buttonValues: cubit.buttonList,
                radioButtonValue: (value, index) {
                  cubit.selectValue(value);
                  print("Button value " + value.toString());
                },
                enableShape: true,
                buttonSpace: 10,
                buttonColor: Colors.white,
                selectedColor: const Color.fromARGB(255, 252, 168, 59),
              ),
            ),
            const Gap(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "السعر",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 45.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          data["priceL"],
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          data["priceM"],
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          data["priceS"],
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Gap(13),
          ],
        ),
      );
    },
  );
}


// "priceL": "300",
//         "priceM": "280",
//         "priceS": "220"