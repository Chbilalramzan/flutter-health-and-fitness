import 'package:fit_x/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return TickerMode(
      enabled: true,
      child: GetMaterialApp(
        title: 'FitX',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        getPages: Routes.getPages(),
        initialRoute: Routes.getInitialRoute(),
      ),
    );
  }
}
