import 'package:flutter/material.dart';

class RatingIcons extends StatelessWidget {
  const RatingIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          size: 20,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 20,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 20,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 20,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 20,
          color: Colors.grey,
        ),
      ],
    );
  }
}
