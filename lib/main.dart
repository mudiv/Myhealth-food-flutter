import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:kcalapp/constants/locale.dart';
// import 'package:kcalapp/screens/home.dart';
import 'package:kcalapp/screens/welcome.dart';

import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      locale: Get.deviceLocale,
      translations: Mylocal(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff91C788)),
        useMaterial3: true,
      ),
      home: WelcomePage(),
    );
  }
}
