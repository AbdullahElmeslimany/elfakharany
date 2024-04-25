import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../model_view/textfromfieldcustom.dart';

Container sheetButtomCustom(BuildContext context,
    {required total, required data}) {
  TextEditingController nameVisa = TextEditingController();
  TextEditingController numberVisa = TextEditingController();
  TextEditingController endDateVisa = TextEditingController();
  TextEditingController secretVisa = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  return Container(
    padding: const EdgeInsets.all(15),
    width: MediaQuery.sizeOf(context).width,
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15))),
    child: SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            const Text(
              "Visa",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Gap(15),
            Text(
              "اكمل البيانات لدفع الفاتورة بمبلغ $total",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Gap(15),
            textFromFieldcustom(
                width: MediaQuery.sizeOf(context).width - 30,
                controller: nameVisa,
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
                    controller: endDateVisa,
                    text: "Visa End Date"),
                textFromFieldcustom(
                    length: true,
                    numLength: 3,
                    width: MediaQuery.sizeOf(context).width / 2.2,
                    controller: secretVisa,
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
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    for (var element in data) {
                      await FirebaseFirestore.instance
                          .collection("orders")
                          .doc(element.id)
                          .update({"active": false});
                    }
                    Get.back();
                    Get.showSnackbar(
                      const GetSnackBar(
                        message: "تمت العملية بنجاح",
                        duration: Duration(seconds: 3),
                      ),
                    );
                  }
                },
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
    ),
  );
}

//copon10