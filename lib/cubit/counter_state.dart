part of 'counter_cubit.dart';

@immutable
class CounterState {
  final int counter;
  final String status;
  const CounterState({required this.status, required this.counter});
}

final class CounterInitialState extends CounterState {
  const CounterInitialState() : super(counter: 0, status: 'Genap');
}
