import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/main.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "车享家",
      initialRoute: '/',
      getPages: AppRoute.routes,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              color: Colors.white,
              centerTitle: true,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
              titleTextStyle: TextStyle(color: Colors.black, fontSize: 18))),
    );
  }
}
