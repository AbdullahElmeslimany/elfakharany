import 'package:elfakharany/view/cart/helper/sheet_buttom_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../model_view/textfromfieldcustom.dart';

coponAndPayment(BuildContext context, {required data}) {
  TextEditingController coponController = TextEditingController();
  double sum = 0.0;
  for (var element in data) {
    sum += element["price"];
  }
  print(sum);

  return Container(
    padding: const EdgeInsets.symmetric(vertical: 20),
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        textFromFieldcustom(
            hight: 19,
            width: MediaQuery.sizeOf(context).width - 30,
            backgroundAnable: true,
            controller: coponController,
            text: "كوبون خصم"),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 55,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.brown[500],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: MaterialButton(
                  onPressed: () {
                    if (coponController.text == "copon10") {
                      sum = sum * 0.9;
                    }
                    print(sum);
                    Get.bottomSheet(
                        sheetButtomCustom(context, total: sum, data: data));
                  },
                  child: Text(
                    "دفع",
                    style: GoogleFonts.alexandria(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      "الاجمالي",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "\$ $sum",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600]),
                  )
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}
