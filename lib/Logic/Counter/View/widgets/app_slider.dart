library app_slider;

import 'package:counter_slider/counter_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubit/counter_cubit.dart';

class AppSlider extends StatelessWidget {
  const AppSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<CounterCubit, CounterCubitState>(
            builder: (context, state) {
              return CounterSlider(
                value: context.read<CounterCubit>().state.counter,
                onChanged: (value) {
                  if (value > context.read<CounterCubit>().state.counter) {
                    BlocProvider.of<CounterCubit>(context).increment();
                  } else {
                    BlocProvider.of<CounterCubit>(context).decrement();
                  }
                },
                width: 256,
                height: 64,
                slideFactor: 1.4,
              );
            },
          ),
        ],
      ),
    );
  }
}
