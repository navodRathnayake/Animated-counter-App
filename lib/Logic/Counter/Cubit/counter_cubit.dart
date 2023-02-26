import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  CounterCubit() : super(const CounterCubitState.initial());

  void increment() => emit(CounterCubitState.add(value: state.counter + 1));
  void decrement() => emit(CounterCubitState.add(value: state.counter - 1));
}
