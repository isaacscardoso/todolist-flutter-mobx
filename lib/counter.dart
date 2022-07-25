import 'package:mobx/mobx.dart';
part 'stores/counter.g.dart';

class Counter = CounterBase with _$Counter;

abstract class CounterBase with Store {
  @observable
  int count = 0;

  @action
  void increment() => count++;

  @action
  void decrement() => count--;
}
