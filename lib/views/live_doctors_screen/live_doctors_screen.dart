import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LiveDoctorsScreen extends StatelessWidget {
  const LiveDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset(Get.arguments['image'.toString()])),
    );
  }
}
