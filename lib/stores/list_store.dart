import 'package:mobx/mobx.dart';
import 'package:mobx_todo_list/stores/todo_task_store.dart';
part 'list_store.g.dart';

class ListStore = ListStoreBase with _$ListStore;

abstract class ListStoreBase with Store {
  @observable
  String? _todoTitle;

  final ObservableList<TodoTaskStore> _todoList =
      ObservableList<TodoTaskStore>();

  String? get todoTitle => _todoTitle;
  List<TodoTaskStore> get todoList => _todoList;

  @action
  void setTodoTitle(String? newTitle) => _todoTitle = newTitle;

  @action
  void addTodo() => _todoList.add(TodoTaskStore(title: todoTitle!));

  @computed
  bool get todoTitleIsValid => todoTitle != null && todoTitle!.isNotEmpty;
}
