import 'package:flutter/material.dart';

import '../../../resources/colors/app_colors.dart';

class PopularDoctorsInformation extends StatefulWidget {
  const PopularDoctorsInformation({super.key});

  @override
  State<PopularDoctorsInformation> createState() =>
      _PopularDoctorsInformationState();
}

class _PopularDoctorsInformationState extends State<PopularDoctorsInformation> {
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
            return const SizedBox(
                height: 200,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Card(
                    color: AppColors.doctorInfoCardBackgroundColor,
                    elevation: 8,
                  ),
                ));
          },
        ),
      ),
    ));
  }
}
