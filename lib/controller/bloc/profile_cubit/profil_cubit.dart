import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

part 'profil_state.dart';

class ProfilCubit extends Cubit<ProfilState> {
  ProfilCubit() : super(ProfilInitial());
  List dataProfile = [];

  getDataProfile({required id}) async {
    log(id);
    FirebaseFirestore.instance
        .collection("users")
        .where("Uid", isEqualTo: id)
        .snapshots()
        .listen((event) {
      dataProfile.addAll(event.docs);
      print(dataProfile[0]["name"]);
      emit(ProfileSuccess(data: dataProfile));
    }).onError((error) {
      emit(GetDataCarError());
    });
  }

  updateProfile({required id, required name, required password}) async {
    FirebaseFirestore.instance.collection("users").doc(id).update({
      "name": name,
    }).then((value) async {
      final user = FirebaseAuth.instance.currentUser;
      await user?.updateDisplayName(password);
      Get.snackbar("تم التعديل بنجاح", "");
    });
  }
}
