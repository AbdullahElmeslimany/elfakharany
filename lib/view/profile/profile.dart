import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../controller/bloc/profile_cubit/profil_cubit.dart';
import '../../model_view/textfromfieldcustom.dart';

class ProfilePage extends StatelessWidget {
  final id;
  const ProfilePage({super.key, this.id});

  @override
  Widget build(BuildContext context) {
    print(id);
    final profilecubit = BlocProvider.of<ProfilCubit>(context);
    profilecubit.getDataProfile(id: id);

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "تعديل البيانات",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<ProfilCubit, ProfilState>(
          builder: (context, state) {
            print(state);

            if (state is ProfileSuccess) {
              TextEditingController nameEditController =
                  TextEditingController(text: state.data[0]["name"]);
              TextEditingController emilEditController =
                  TextEditingController(text: state.data[0]["email"]);

              TextEditingController passwordEditController =
                  TextEditingController();
              return Directionality(
                textDirection: TextDirection.rtl,
                child: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Gap(70),
                        textFromFieldcustom(
                            backgroundAnable: true,
                            keyboardType: TextInputType.name,
                            controller: nameEditController,
                            text: "الاسم",
                            width: MediaQuery.sizeOf(context).width - 30,
                            hight: 20),
                        const Gap(15),
                        textFromFieldcustom(
                            enabled: false,
                            keyboardType: TextInputType.emailAddress,
                            controller: emilEditController,
                            text: "البريد الالكتروني",
                            width: MediaQuery.sizeOf(context).width - 30,
                            hight: 20),
                        const Gap(15),
                        textFromFieldcustom(
                            backgroundAnable: true,
                            keyboardType: TextInputType.visiblePassword,
                            controller: passwordEditController,
                            text: "الرقم السري",
                            width: MediaQuery.sizeOf(context).width - 30,
                            hight: 20),
                        const Gap(50),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.brown[600],
                          ),
                          width: MediaQuery.sizeOf(context).width / 1.5,
                          child: MaterialButton(
                            height: 30,
                            child: const Text(
                              "حفظ التعديلات",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () async {
                              profilecubit.updateProfile(
                                id: id,
                                name: nameEditController.text,
                                password: passwordEditController.text,
                              );
                              Get.back();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }

            return const Center(child: CircularProgressIndicator());
          },
        ));
  }
}
