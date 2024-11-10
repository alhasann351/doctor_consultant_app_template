import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:doctor_consultant_app_template/views_models/controllers/payment_button_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/assets/images_icons.dart';
import '../../../resources/colors/app_colors.dart';

class CreditDebitCardsButton extends StatefulWidget {
  const CreditDebitCardsButton({super.key});

  @override
  State<CreditDebitCardsButton> createState() => _CreditDebitCardsButtonState();
}

class _CreditDebitCardsButtonState extends State<CreditDebitCardsButton> {
  final PaymentButtonController paymentButtonController =
      Get.put(PaymentButtonController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        paymentButtonController.selectCreditDebitCard();
      },
      child: Obx(
        () => SizedBox(
          height: 60,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: paymentButtonController.creditDebitCardSelected.value
                ? AppColors.cardSelectedColor
                : Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'credit_debit_card_text'.tr,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: AppFontStyle.rubik,
                      fontSize: 16,
                      color:
                          paymentButtonController.creditDebitCardSelected.value
                              ? Colors.white
                              : Colors.black,
                    ),
                  ),
                  Image.asset(
                    ImagesIcons.creditDebitCardIcon,
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
