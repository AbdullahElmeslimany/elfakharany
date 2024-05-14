import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../controller/bloc/order_cubit/order_cubit.dart';
import 'helper/copon_and_payment.dart';
import 'helper/items_cart.dart';

class CartPage extends StatelessWidget {
  final id;
  const CartPage({super.key, this.id});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OrderCubit>(context);

    cubit.detielsOrder(id: id);
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
                      child: BlocBuilder<OrderCubit, OrderState>(
                        builder: (context, state) {
                          if (state is SuccessState) {
                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: cubit.orderData.length,
                              itemBuilder: (BuildContext context, int index) {
                                return itemsCart(context,
                                    idAccount: id, data: state.date[index]);
                              },
                            );
                          }
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                coponAndPayment(context, data: cubit.orderData)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
