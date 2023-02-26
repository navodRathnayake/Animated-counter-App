library buble_animation;

import 'package:animated_counter_app/Theme/theme_extra.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class BubleAnimation extends StatelessWidget {
  const BubleAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return PlasmaRenderer(
      type: PlasmaType.infinity,
      particles: 9,
      color: Theme.of(context).particleColor,
      blur: 0.51,
      size: 0.50,
      speed: 1.30,
      offset: 0.4,
      blendMode: BlendMode.plus,
      particleType: ParticleType.atlas,
      variation1: 0,
      variation2: 0,
      variation3: 0,
      rotation: 0,
      fps: 60,
    );
  }
}
