import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/assets/images_icons.dart';
import '../../../resources/fonts/app_font_style.dart';

class CashOnDelivery extends StatefulWidget {
  const CashOnDelivery({super.key});

  @override
  State<CashOnDelivery> createState() => _CashOnDeliveryState();
}

class _CashOnDeliveryState extends State<CashOnDelivery> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'cash_on_delivery'.tr,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: AppFontStyle.rubik,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              Image.asset(
                ImagesIcons.cashOnDeliveryIcon,
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
