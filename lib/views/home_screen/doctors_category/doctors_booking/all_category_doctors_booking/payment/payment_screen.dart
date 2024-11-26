import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/components/back_button_title.dart';
import 'package:doctor_consultant_app_template/resources/components/background_design.dart';
import 'package:doctor_consultant_app_template/resources/components/rounded_button.dart';
import 'package:doctor_consultant_app_template/utils/app_utils.dart';
import 'package:doctor_consultant_app_template/views/home_screen/doctors_category/doctors_booking/all_category_doctors_booking/payment/widgets/cash_on_delivery.dart';
import 'package:doctor_consultant_app_template/views/home_screen/doctors_category/doctors_booking/all_category_doctors_booking/payment/widgets/credit_debit_card_input_form.dart';
import 'package:doctor_consultant_app_template/views/home_screen/doctors_category/doctors_booking/all_category_doctors_booking/payment/widgets/credit_debit_cards_button.dart';
import 'package:doctor_consultant_app_template/views/home_screen/doctors_category/doctors_booking/all_category_doctors_booking/payment/widgets/paypal_payment_button.dart';
import 'package:doctor_consultant_app_template/views_models/controllers/payment_button_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../resources/fonts/app_font_style.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final PaymentButtonController paymentButtonController =
      Get.put(PaymentButtonController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const BackgroundDesign(),
          BackButtonTitle(titleText: 'payment'.tr),
          Positioned(
            top: 80,
            left: 0,
            right: 0,
            bottom: 0,
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        const Padding(
                            padding: EdgeInsets.only(
                                top: 0, left: 10, right: 10, bottom: 10),
                            child: CreditDebitCardsButton()),
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 0, left: 30, right: 30, bottom: 10),
                            child: Obx(() => paymentButtonController
                                    .creditDebitCardSelected.value
                                ? const CreditDebitCardInputForm()
                                : const SizedBox())),
                        const Padding(
                            padding: EdgeInsets.only(
                                top: 0, left: 10, right: 10, bottom: 20),
                            child: PaypalPaymentButton()),
                        const Padding(
                            padding: EdgeInsets.only(
                                top: 0, left: 10, right: 10, bottom: 10),
                            child: CashOnDelivery()),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Obx(
                      () => paymentButtonController.allSelectedTrue
                          ? SizedBox(
                              height: 54,
                              width: MediaQuery.of(context).size.width,
                              child: RoundedButton(
                                  title: 'pay'.tr,
                                  textStyle: const TextStyle(
                                    fontFamily: AppFontStyle.rubik,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: AppColors.commonWhiteColor,
                                  ),
                                  onTap: () {
                                    AppUtils().showDoctorBookingDialog(
                                        Get.arguments['doctorName'.toString()],
                                        Get.arguments[
                                            'doctorSpeciality'.toString()]);
                                  }))
                          : const SizedBox(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
