import 'package:mobx/mobx.dart';
part 'list_store.g.dart';

class ListStore = ListStoreBase with _$ListStore;

abstract class ListStoreBase with Store {
  @observable
  String? _todoTitle;

  final ObservableList<String> _todoList = ObservableList<String>();

  String? get todoTitle => _todoTitle;
  List<String> get todoList => _todoList;

  @action
  void setTodoTitle(String newTitle) => _todoTitle = newTitle;

  @action
  void addTodo() => _todoList.add(todoTitle!);

  @computed
  bool get todoTitleIsValid => todoTitle != null && todoTitle!.isNotEmpty;
}
