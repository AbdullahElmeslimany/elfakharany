import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit() : super(OrderInitial());

  final CollectionReference _order =
      FirebaseFirestore.instance.collection("orders");
  List orderData = [];

  addOrder({required item, required client, required value, required data}) {
    late int priceValue;
    print(value);
    if (value == "L") {
      priceValue = int.parse(data["priceL"]).round();
    } else if (value == "M") {
      priceValue = int.parse(data["priceM"]).round();
    } else if (value == "S") {
      priceValue = int.parse(data["priceS"]).round();
    }
    print(priceValue);
    _order.add({
      "active": true,
      "client": client,
      "item": item,
      "price": priceValue,
    }).then((value) => (value) {
          emit(SuccessState());
        });
  }

  detielsOrder({required id}) async {
    _order
        .where("client", isEqualTo: id)
        .where("active", isEqualTo: true)
        .get()
        .then((value) {
      orderData.clear();
      orderData.addAll(value.docs);
      emit(SuccessState(date: orderData));
    });
  }
}
