library app_slider;

import 'package:counter_slider/counter_slider.dart';
import 'package:flutter/material.dart';

class AppSlider extends StatelessWidget {
  const AppSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CounterSlider(
            value: 12,
            onChanged: (int) {},
            width: 256,
            height: 64,
            slideFactor: 1.4,
          ),
        ],
      ),
    );
  }
}
