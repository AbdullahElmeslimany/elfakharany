import 'package:flutter/material.dart';
import 'helper/copon_and_payment.dart';
import 'helper/items_cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "سلة الطلبات",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height - 300,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 1,
                        itemBuilder: (BuildContext context, int index) {
                          return itemsCart(context);
                        },
                      ),
                    ),
                  ],
                ),
                coponAndPayment(context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
