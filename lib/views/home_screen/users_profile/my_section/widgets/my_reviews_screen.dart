import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/views/home_screen/users_profile/my_section/widgets/user_rating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../resources/components/back_button_title.dart';
import '../../../../../resources/components/background_design.dart';
import '../../../../../resources/components/loading_animation.dart';
import '../../../../../resources/fonts/app_font_style.dart';

class MyReviewsScreen extends StatelessWidget {
  MyReviewsScreen({super.key});

  final List<String> doctorsImages = [
    'https://drive.google.com/uc?export=view&id=1cIk74RjWsLC57fX4mwWGqKmFwk2AKzS2',
    'https://drive.google.com/uc?export=view&id=1AAim39CKHOXSAck7ZKFYM0kJaMzftHE1',
    'https://drive.google.com/uc?export=view&id=1WrN92X7bwrrnWkBmekiOBUxE5be4l9tv',
    'https://drive.google.com/uc?export=view&id=1AB_20pqkIyHMM3wtwYXXNsYvK2PtNos6',
    'https://drive.google.com/uc?export=view&id=1oaJ4driUyTSafpjwmFfwvaUpbcHZmN2I',
    'https://drive.google.com/uc?export=view&id=1DHdu2k2Xa1k2XeEGXaJ0ZCu30LW4TY8T',
    'https://drive.google.com/uc?export=view&id=178NiahI3-ZWQFK3gA1kQ_Eu4pXkK4swm',
    'https://drive.google.com/uc?export=view&id=18SOpOLXuBNx18bOSM85JRSNXUdoSBR_g',
    'https://drive.google.com/uc?export=view&id=1FcS4n3UTvK-2LWRy4zEdVtFz7U2nPTP5',
    'https://drive.google.com/uc?export=view&id=1MOQBZlf7am-5k0OvoVMY_9tyKnHqotSV',
  ];
  final List<String> doctorsName = [
    'Dr. Ethan Caldwell',
    'Dr. Amelia Carrington',
    'Dr. Caleb Vaughn',
    'Dr. Diana Holloway',
    'Dr. Owen Prescott',
    'Dr. Amelia Townsend',
    'Dr. Victor Langston',
    'Dr. Evelyn Foster',
    'Dr. Zachary Miles',
    'Dr. Lila Monroe',
  ];

  final List<String> reviews = [
    'He listened to my concerns patiently and provided a detailed explanation of my condition.',
    'She was very thorough in his diagnosis and made sure I understood every step of the treatment. He genuinely cares for his patients. Highly recommend!',
    'He gave me practical advice and followed up to ensure my recovery was on track.',
    'She quickly identified the issue and prescribed a treatment that worked wonders. Great experience!',
    'Provided a quick yet comprehensive consultation. I appreciate his dedication to patient care.',
    'She answered all my questions and reassured me during a stressful time. Thank you.',
    'He addressed all my concerns with patience and ensured I understood the treatment plan.',
    'I felt heard and respected throughout the consultation. I’ll definitely reach out to her again.',
    'He explained the tests I needed and why they were important. His expertise is evident in how he handles patients.',
    'Her calm and empathetic nature made it so much easier to talk about my health concerns. Truly a gem of a doctor.',
  ];
  final List<String> reviewsTime = [
    '5 minutes ago',
    '1 hours ago',
    '1 day ago',
    '2 days ago',
    '1 week ago',
    '2 weeks ago',
    '5 months ago',
    '8 months ago',
    '9 months ago',
    '10 months ago',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      body: Stack(
        children: [
          const BackgroundDesign(),
          BackButtonTitle(titleText: 'my_reviews'.tr),
          Positioned(
            top: 70,
            bottom: 10,
            left: 10,
            right: 10,
            child: SafeArea(
              child: ListView.builder(
                cacheExtent: 1500,
                itemCount: doctorsImages.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: AppColors.commonWhiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipOval(
                                child: SizedBox.fromSize(
                                  size: const Size.fromRadius(20),
                                  // Image radius
                                  child: CachedNetworkImage(
                                    imageUrl: doctorsImages[index],
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) =>
                                        const LoadingAnimation(),
                                    errorWidget: (context, url, error) =>
                                        const Icon(
                                      Icons.error,
                                      color: AppColors.commonGreyColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, bottom: 8, left: 0, right: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      doctorsName[index],
                                      style: const TextStyle(
                                          fontFamily: AppFontStyle.rubik,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.commonBlackColor),
                                    ),
                                    const UserRating(),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                reviewsTime[index],
                                style: const TextStyle(
                                    fontFamily: AppFontStyle.rubik,
                                    fontSize: 15,
                                    color: AppColors.commonGreyColor),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            reviews[index],
                            style: const TextStyle(
                                fontFamily: AppFontStyle.rubik,
                                fontSize: 14,
                                color: AppColors.commonBlackColor),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
