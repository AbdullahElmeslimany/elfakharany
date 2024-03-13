import 'package:elfakharany/view/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'view/cart/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'الفخراني',
        theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromARGB(246, 238, 238, 238),
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
            useMaterial3: true,
            textTheme: TextTheme(bodyMedium: GoogleFonts.alexandria())),
        home: const Directionality(
            textDirection: TextDirection.rtl, child: HomePage()));
  }
}
