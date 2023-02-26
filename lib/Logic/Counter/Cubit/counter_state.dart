part of 'counter_cubit.dart';

class CounterCubitState extends Equatable {
  final int counter;

  const CounterCubitState({required this.counter});
  const CounterCubitState.initial() : this(counter: 0);
  const CounterCubitState.add({required int value}) : this(counter: value);

  @override
  List<Object?> get props => [counter];
}
