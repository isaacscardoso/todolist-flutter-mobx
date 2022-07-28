import 'package:mobx/mobx.dart';
part 'todo_task_store.g.dart';

class TodoTaskStore = TodoTaskStoreBase with _$TodoTaskStore;

abstract class TodoTaskStoreBase with Store {
  final String title;

  @observable
  bool _done = false;

  bool get done => _done;

  TodoTaskStoreBase({required this.title});

  @action
  void toggleDone() => _done = !_done;
}
