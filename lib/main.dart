import 'package:flutter/material.dart';
import 'package:park_monitor_app/parks/controller.dart';
import 'package:park_monitor_app/parks/view.dart';
import 'package:get/get.dart';

void main() {
  final controller = Get.put(ParkingPageController());
  controller.mqttConnect();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const ParkingPageView(),
    );
  }
}