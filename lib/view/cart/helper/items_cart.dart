import 'package:elfakharany/controller/bloc/order_cubit/order_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

itemsCart(BuildContext context, {required data, required idAccount}) {
  final cubit = BlocProvider.of<OrderCubit>(context);
  String? image;
  if (data["item"] == "الايسكريم") {
    image = "assets/images/33.jpg";
  } else if (data["item"] == "حلويات") {
    image = "assets/images/11.jpg";
  } else if (data["item"] == "بليلة") {
    image = "assets/images/22.jpg";
  } else if (data["item"] == "العصائر") {
    image = "assets/images/44.jpg";
  }
  print(data["item"]);
  return Stack(
    children: [
      Container(
        height: 120,
        width: MediaQuery.sizeOf(context).width,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: MediaQuery.sizeOf(context).width - 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    data["item"],
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "الكمية 1",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      Text(
                        "${data["price"]} جنيه",
                        style: TextStyle(
                            color: Colors.amber[800],
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                data["item"] == "الايسكريم"
                    ? "assets/images/33.jpg"
                    : data["item"] == "الحلويات"
                        ? "assets/images/11.jpg"
                        : data["item"] == "البليلة"
                            ? "assets/images/22.jpg"
                            : "assets/images/44.jpg",
                width: 135,
                height: 120,
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      ),
      Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: IconButton(
              onPressed: () {
                cubit.deleteOrder(idItem: data.id, idAccount: idAccount);
              },
              icon: const Icon(
                Icons.highlight_remove,
                color: Colors.red,
                size: 28,
              )),
        ),
      ),
    ],
  );
}
