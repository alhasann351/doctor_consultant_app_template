import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LiveDoctorsScreen extends StatelessWidget {
  const LiveDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              Get.arguments['image'.toString()],
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
