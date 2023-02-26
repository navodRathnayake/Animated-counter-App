library flare_animation;

import 'package:animated_counter_app/Theme/theme_extra.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FlareAnimation extends StatelessWidget {
  const FlareAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 70.0,
      // height: 40.0,
      child: Stack(
        children: [
          FlareActor(
            'Assets/Flare/circle.flr',
            animation: "Alarm",
            color: Theme.of(context).secondaryHeaderColor,
          ),
          Center(
              child: Text('01',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 120,
                      color: Theme.of(context).particleColor)))
        ],
      ),
    );
  }
}
