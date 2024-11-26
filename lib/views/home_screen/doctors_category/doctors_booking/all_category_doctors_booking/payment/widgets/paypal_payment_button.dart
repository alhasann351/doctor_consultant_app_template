import 'package:doctor_consultant_app_template/resources/assets/images_icons.dart';
import 'package:doctor_consultant_app_template/views_models/controllers/payment_button_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../resources/colors/app_colors.dart';
import '../../../../../../../resources/fonts/app_font_style.dart';

class PaypalPaymentButton extends StatefulWidget {
  const PaypalPaymentButton({super.key});

  @override
  State<PaypalPaymentButton> createState() => _PaypalPaymentButtonState();
}

class _PaypalPaymentButtonState extends State<PaypalPaymentButton> {
  final PaymentButtonController paymentButtonController =
      Get.put(PaymentButtonController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        paymentButtonController.selectPaypal();
      },
      child: Obx(
        () => SizedBox(
          height: 60,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: paymentButtonController.paypalSelected.value
                ? AppColors.commonGreenColor
                : AppColors.commonWhiteColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'paypal'.tr,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: AppFontStyle.rubik,
                      fontSize: 16,
                      color: paymentButtonController.paypalSelected.value
                          ? AppColors.commonWhiteColor
                          : AppColors.commonBlackColor,
                    ),
                  ),
                  Image.asset(
                    ImagesIcons.paypalIcon,
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
