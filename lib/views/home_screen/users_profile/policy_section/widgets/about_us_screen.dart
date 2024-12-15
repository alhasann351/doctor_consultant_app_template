import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get/get.dart';

import '../../../../../resources/components/back_button_title.dart';
import '../../../../../resources/components/background_design.dart';
import '../../../../../resources/components/loading_animation.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  final String aboutUsData =
      '<p>Welcome to <strong>Doctor Consultant App</strong>, your trusted partner in managing health and wellness. Our Doctor Consultant App is designed to bridge the gap between patients and healthcare professionals, offering a seamless, user-friendly platform for consultations, advice, and support.</p> <h2>Our Mission</h2> <p>Our mission is to revolutionize healthcare accessibility. We aim to empower individuals by providing instant access to qualified medical experts, ensuring that everyone can receive the care they need, when they need it.</p> <h2>What We Offer</h2> <ul> <li><strong>Convenient Consultations</strong>: Connect with experienced doctors from the comfort of your home.</li> <li><strong>Trusted Experts</strong>: Our network comprises certified and highly skilled healthcare professionals across various specialties.</li> <li><strong>Personalized Care</strong>: Receive tailored medical advice based on your unique health needs.</li> <li><strong>Secure and Private</strong>: Your health information is safeguarded with top-notch security measures.</li> </ul> <h2>Why Choose Us?</h2> <ul> <li><strong>24/7 Availability</strong>: Access consultations anytime, anywhere.</li> <li><strong>Cost-Effective</strong>: Save time and money by avoiding unnecessary visits to clinics.</li> <li><strong>Comprehensive Services</strong>: From general health queries to specialized consultations, we’ve got you covered.</li> </ul> <h2>Our Vision</h2> <p>At <strong>Doctor Consultant App</strong>, we envision a world where healthcare is accessible to everyone, regardless of location or circumstances. We are committed to leveraging technology to make this vision a reality.</p> <p>Let us help you take control of your health journey. Together, we can make healthcare simpler, faster, and more effective.</p> </div>';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      body: Stack(
        children: [
          const BackgroundDesign(),
          BackButtonTitle(titleText: 'about_us'.tr),
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
                    aboutUsData,
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                )),
              )),
        ],
      ),
    );
  }
}
