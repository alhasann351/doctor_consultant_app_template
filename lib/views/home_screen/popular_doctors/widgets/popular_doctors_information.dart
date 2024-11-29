import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/components/rating_icons.dart';
import '../../doctors_category/doctors_booking/all_category_doctors_booking/widgets/doctors_information.dart';

class PopularDoctorsInformation extends StatefulWidget {
  const PopularDoctorsInformation({super.key});

  @override
  State<PopularDoctorsInformation> createState() =>
      _PopularDoctorsInformationState();
}

class _PopularDoctorsInformationState extends State<PopularDoctorsInformation> {
  final List<String> image = [
    'https://drive.google.com/uc?export=view&id=1bdExaQPkKjeyyfu9NhS0L6lB-rwQpT8L',
    'https://drive.google.com/uc?export=view&id=19sT1nN9dgeipqvABY66uD5sE5NjMKr60',
    'https://drive.google.com/uc?export=view&id=1nUm0SIV4FoTDsrc9us1Y_iWTDnDyyBFg',
    'https://drive.google.com/uc?export=view&id=1zrCvhB2hRdO3-YbuvuoZ7P4IpiRqy2w1',
    'https://drive.google.com/uc?export=view&id=1Rm7ymZv9cRcJ_mmggz80hiy7E01EVF09',
    'https://drive.google.com/uc?export=view&id=1mtxPO34RvdXUHt05tDNGfArXBH1vyz6w',
    'https://drive.google.com/uc?export=view&id=1zxgs7y0TlRgQxuyu0i7owYJteIgGl90p',
    'https://drive.google.com/uc?export=view&id=1P4S_9xA8bow_VUdcJ7TZE3EgHzzrgRMU',
    'https://drive.google.com/uc?export=view&id=11I6zZzSm9hhfZceM6NFQVr8wUqEaFhQh',
    'https://drive.google.com/uc?export=view&id=1ZWFVIj0H33y3HisCofqqkskKDC8l-731',
  ];

  final List<String> doctorName = [
    'Dr. Adrian Blackwell',
    'Dr. Juliette Marlowe',
    'Dr. Nicholas Fairchild',
    'Dr. Cassandra Whitmore',
    'Dr. Christopher Harlow',
    'Dr. Bianca Sterling',
    'Dr. Simon Carrington',
    'Dr. Rosalind Keller',
    'Dr. Elijah Rutherford',
    'Dr. Serena Westwood',
  ];

  final List<String> doctorSpeciality = [
    'skin_specialist'.tr,
    'heart_specialist'.tr,
    'eye_specialist'.tr,
    'ear_specialist'.tr,
    'cancer_specialist'.tr,
    'cancer_specialist'.tr,
    'ear_specialist'.tr,
    'eye_specialist'.tr,
    'heart_specialist'.tr,
    'skin_specialist'.tr,
  ];

  final List<String> hospitalName = [
    'Lifeline Haven Medical',
    'Serenity Springs Health',
    'Beacon Crest Medical',
    'Evergreen Care Pavilion',
    'Horizon Wellness Hospital',
    'Harmony Ridge Health Center',
    'VitalPath Regional Medical',
    'Silver Oak Healing Center',
    'Tranquil Meadows Medical',
    'Summit Grove Healthcare',
  ];

  final List<String> doctorExperience = [
    '5 years experience',
    '6 years experience',
    '7 years experience',
    '8 years experience',
    '5 years experience',
    '6 years experience',
    '4 years experience',
    '3 years experience',
    '7 years experience',
    '8 years experience',
  ];

  final List<String> doctorPercentOfGood = [
    '95% good',
    '85% good',
    '75% good',
    '85% good',
    '75% good',
    '85% good',
    '95% good',
    '85% good',
    '75% good',
    '85% good',
  ];

  final List<String> seePatients = [
    '95 patients',
    '85 patients',
    '75 patients',
    '65 patients',
    '55 patients',
    '45 patients',
    '75 patients',
    '85 patients',
    '95 patients',
    '55 patients',
  ];

  final List<String> nextAvailableTime = [
    '01:00 PM tomorrow',
    '02:00 PM tomorrow',
    '03:00 PM tomorrow',
    '04:00 PM tomorrow',
    '05:00 PM tomorrow',
    '06:00 PM tomorrow',
    '07:00 PM tomorrow',
    '08:00 PM tomorrow',
    '09:00 PM tomorrow',
    '10:00 PM tomorrow',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(top: 80, left: 10, right: 10, bottom: 10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          cacheExtent: 1500,
          itemCount: 10,
          itemBuilder: (context, index) {
            return DoctorsInformation(
                doctorImage: image[index],
                doctorName: doctorName[index],
                doctorSpeciality: doctorSpeciality[index],
                doctorExperience: doctorExperience[index],
                doctorPercentOfGood: doctorPercentOfGood[index],
                seePatients: seePatients[index],
                nextAvailable: 'next_available'.tr,
                nextAvailableTime: nextAvailableTime[index],
                hospitalName: hospitalName[index],
                rowChild: const RatingIcons());
          },
        ),
      ),
    ));
  }
}
