import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get/get.dart';

import '../../../../../resources/components/back_button_title.dart';
import '../../../../../resources/components/background_design.dart';
import '../../../../../resources/components/loading_animation.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  final String contactUsData =
      '''<div style="font-family: Arial, sans-serif; max-width: 600px; margin: auto; text-align: center; padding: 20px;"> <h2>Contact Us</h2> <p>We’re here to assist you! If you have any questions, feedback, or need support, please don’t hesitate to reach out to us:</p> <p> 📧 <strong>Email:</strong> <a href="mailto:support@doctorconsultantapp.com">support@doctorconsultantapp.com</a><br> 📞 <strong>Phone:</strong> <a href="tel:+15551234567">+1 (555) 123-4567</a> </p> <p>Our team is available to help you Monday through Friday, 9:00 AM to 10:00 PM (local time).</p> </div>''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      body: Stack(
        children: [
          const BackgroundDesign(),
          BackButtonTitle(titleText: 'contact_us'.tr),
          Positioned(
              top: 75,
              bottom: 10,
              left: 10,
              right: 10,
              child: SafeArea(
                child: SingleChildScrollView(
                    child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: HtmlWidget(
                    onLoadingBuilder: (context, element, loadingProgress) {
                      return const Center(
                        child: LoadingAnimation(),
                      );
                    },
                    contactUsData,
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                )),
              )),
        ],
      ),
    );
  }
}
