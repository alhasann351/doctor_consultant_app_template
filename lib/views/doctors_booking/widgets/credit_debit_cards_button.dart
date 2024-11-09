import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreditDebitCardsButton extends StatelessWidget {
  const CreditDebitCardsButton({super.key});

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
                'credit_debit_card_text'.tr,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: AppFontStyle.rubik,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const Icon(
                CupertinoIcons.plus_circled,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
