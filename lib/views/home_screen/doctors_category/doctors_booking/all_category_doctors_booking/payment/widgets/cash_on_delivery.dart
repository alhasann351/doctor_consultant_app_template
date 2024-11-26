import 'package:doctor_consultant_app_template/views_models/controllers/payment_button_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../resources/assets/images_icons.dart';
import '../../../../../../../resources/colors/app_colors.dart';
import '../../../../../../../resources/fonts/app_font_style.dart';

class CashOnDelivery extends StatefulWidget {
  const CashOnDelivery({super.key});

  @override
  State<CashOnDelivery> createState() => _CashOnDeliveryState();
}

class _CashOnDeliveryState extends State<CashOnDelivery> {
  final PaymentButtonController paymentButtonController =
      Get.put(PaymentButtonController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        paymentButtonController.selectCashOnDelivery();
      },
      child: Obx(
        () => SizedBox(
          height: 60,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: paymentButtonController.cashOnDeliverySelected.value
                ? AppColors.commonGreenColor
                : AppColors.commonWhiteColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'cash_on_delivery'.tr,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: AppFontStyle.rubik,
                      fontSize: 16,
                      color:
                          paymentButtonController.cashOnDeliverySelected.value
                              ? AppColors.commonWhiteColor
                              : AppColors.commonBlackColor,
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
        ),
      ),
    );
  }
}
