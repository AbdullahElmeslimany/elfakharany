import 'package:elfakharany/view/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../controller/bloc/order_cubit/order_cubit.dart';
import '../../../controller/bloc/select_value_cubit/select_value_cubit.dart';
import 'exstantion_items.dart';

buttonCastomAdd(BuildContext context, name, {required data, required id}) {
  final cubit = BlocProvider.of<SelectValueCubit>(context);
  print(cubit.adda);

  return Center(
    child: MaterialButton(
      onPressed: () {
        BlocProvider.of<OrderCubit>(context).addOrder(
          data: data,
          value: cubit.currentvalue,
          item: name,
          client: id,
        );
        Get.showSnackbar(const GetSnackBar(
          message: "تمت اضافة الي العربية بنجاح",
          duration: Duration(seconds: 3),
        ));
        // Get.defaultDialog(
        //     title: "اضافة الي العربة",
        //     content: Directionality(
        //       textDirection: TextDirection.rtl,
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text(name),
        //           Text("${BlocProvider.of<SelectValueCubit>(context).adda}"),
        //         ],
        //       ),
        //     ));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        height: 40,
        width: MediaQuery.sizeOf(context).width - 70,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 146, 190),
            borderRadius: BorderRadius.circular(20)),
        child: const Center(
          child: Text(
            "اضافة للعربه",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    ),
  );
}
