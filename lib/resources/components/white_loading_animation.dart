import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class WhiteLoadingAnimation extends StatelessWidget {
  const WhiteLoadingAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.hexagonDots(color: Colors.white, size: 25);
  }
}
