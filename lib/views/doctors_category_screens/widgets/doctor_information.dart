import 'package:doctor_consultant_app_template/resources/assets/images_icons.dart';
import 'package:flutter/material.dart';

class DoctorInformation extends StatelessWidget {
  DoctorInformation({super.key});

  final List<String> image = [
    ImagesIcons.liveDoctorsImage1,
    ImagesIcons.liveDoctorsImage2,
    ImagesIcons.liveDoctorsImage3,
    ImagesIcons.liveDoctorsImage4,
    ImagesIcons.liveDoctorsImage5,
    ImagesIcons.liveDoctorsImage6,
    ImagesIcons.liveDoctorsImage7,
    ImagesIcons.liveDoctorsImage8,
    ImagesIcons.liveDoctorsImage9,
    ImagesIcons.liveDoctorsImage10,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          //scrollDirection: Axis.vertical,
          //shrinkWrap: true,
          itemCount: image.length,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 180,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Card(
                  elevation: 8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Image.asset(
                          image[index],
                          fit: BoxFit.cover,
                          height: 95,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
