import 'package:mobx/mobx.dart';

class Counter {
  final Observable _counter = Observable(0);
  late Action increment;
  late Action decrement;

  Counter() {
    increment = Action(_increment);
    decrement = Action(_decrement);
  }

  int get counterValue => _counter.value;
  void _increment() => _counter.value += 1;
  void _decrement() => _counter.value -= 1;
}
