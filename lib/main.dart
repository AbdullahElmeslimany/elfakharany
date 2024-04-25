import 'package:elfakharany/view/home/login_signup/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'controller/bloc/login_regester_cubit/login_and_regester_cubit.dart';
import 'controller/bloc/order_cubit/order_cubit.dart';
import 'controller/bloc/profile_cubit/profil_cubit.dart';
import 'controller/bloc/search_cubit/search_and_filter_cubit.dart';
import 'controller/bloc/select_value_cubit/select_value_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginAndRegesterCubit(),
        ),
        BlocProvider(
          create: (context) => OrderCubit(),
        ),
        BlocProvider(
          create: (context) => SelectValueCubit(),
        ),
        BlocProvider(
          create: (context) => ProfilCubit(),
        ),
        BlocProvider(
          create: (context) => SearchAndFilterCubit(),
        ),
      ],
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'الفخراني',
          theme: ThemeData(
              scaffoldBackgroundColor: const Color.fromARGB(246, 238, 238, 238),
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
              useMaterial3: true,
              textTheme: TextTheme(bodyMedium: GoogleFonts.alexandria())),
          home: const Directionality(
              textDirection: TextDirection.rtl, child: LoginPage())),
    );
  }
}


//copon10


//aa@a.com
//123123