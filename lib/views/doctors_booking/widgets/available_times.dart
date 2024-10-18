import 'package:flutter/material.dart';

class AvailableTimes extends StatelessWidget {
  AvailableTimes({super.key});

  final List<String> times = [
    '1:00 PM',
    '1:30 PM',
    '2:00 PM',
    '2:30 PM',
    '3:00 PM',
    '3:30 PM',
    '4:00 PM',
    '4:30 PM',
    '5:30 PM',
    '7:00 PM',
    '7:30 PM',
    '8:00 PM',
    '8:30 PM',
    '9:00 PM',
    '9:30 PM',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          //childAspectRatio: 2,
          mainAxisExtent: 65,
          mainAxisSpacing: 10,
          crossAxisSpacing: 5,
        ),
        itemCount: times.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white,
            child: Center(child: Text(times[index])),
          );
        });
  }
}
