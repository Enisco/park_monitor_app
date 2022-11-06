// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:park_monitor_app/parks/controller.dart';

class ParkingPageView extends StatefulWidget {
  const ParkingPageView({super.key});

  @override
  State<ParkingPageView> createState() => _ParkingPageViewState();
}

class _ParkingPageViewState extends State<ParkingPageView> {
  final controller = Get.put(ParkingPageController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Park Monitoring App',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          const Text(
            'Test Car Park',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 50),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            width: size.width,
            height: size.height / 4,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
              color: Colors.grey[350],
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      'Space 1',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Space 2',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Space 3',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      CupertinoIcons.car_detailed,
                      size: 50,
                      color: Colors.red[600],
                    ),
                    divLine(),
                    // Icon(
                    //   CupertinoIcons.car_detailed,
                    //   size: 50,
                    //   color: Colors.green[800],
                    // ),
                    const SizedBox(
                      height: 50,
                      width: 50,
                    ),
                    divLine(),
                    // Icon(
                    //   CupertinoIcons.car_detailed,
                    //   size: 50,
                    //   color: Colors.blue[800],
                    // ),
                    const SizedBox(
                      height: 50,
                      width: 50,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget divLine() {
  return Container(
    height: 180,
    width: 3,
    color: Colors.white,
  );
}
