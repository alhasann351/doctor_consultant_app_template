import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/components/rounded_button.dart';
import 'package:doctor_consultant_app_template/utils/app_utils.dart';
import 'package:doctor_consultant_app_template/views/doctors_booking/widgets/cash_on_delivery.dart';
import 'package:doctor_consultant_app_template/views/doctors_booking/widgets/credit_debit_card_input_form.dart';
import 'package:doctor_consultant_app_template/views/doctors_booking/widgets/credit_debit_cards_button.dart';
import 'package:doctor_consultant_app_template/views/doctors_booking/widgets/payment_back_button.dart';
import 'package:doctor_consultant_app_template/views/doctors_booking/widgets/paypal_payment_button.dart';
import 'package:doctor_consultant_app_template/views_models/controllers/card_doctor_booking_time_controller.dart';
import 'package:doctor_consultant_app_template/views_models/controllers/date_controller.dart';
import 'package:doctor_consultant_app_template/views_models/controllers/payment_button_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../resources/fonts/app_font_style.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final DateController dateController = Get.put(DateController());
  final CardDoctorBookingTimeController cardDoctorBookingTimeController =
      Get.put(CardDoctorBookingTimeController());
  final PaymentButtonController paymentButtonController =
      Get.put(PaymentButtonController());

  @override
  Widget build(BuildContext context) {
    final formattedDate =
        DateFormat('dd MMMM yyyy').format(dateController.selectedDate.value);

    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.cancerScreenBottomBackgroundColor.withOpacity(0.2),
                  AppColors.cancerScreenTopBackgroundColor.withOpacity(0.2),
                ],
              ),
            ),
          ),
          const PaymentBackButton(),
          Positioned(
            top: 80,
            left: 0,
            right: 0,
            bottom: 0,
            child: SafeArea(
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
                      child: Obx(() =>
                          paymentButtonController.creditDebitCardSelected.value
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
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
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
                              color: Colors.white,
                            ),
                            onTap: () {
                              AppUtils().showDoctorBookingDialog(
                                  Get.arguments['doctorName'.toString()]);
                            }))
                    : const SizedBox(),
              ),
            ),
          ),
          /*Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  formattedDate,
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  cardDoctorBookingTimeController.selectedTimeIndex.value
                      .toString(),
                  style: const TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),*/
        ],
      ),
    );
  }
}
