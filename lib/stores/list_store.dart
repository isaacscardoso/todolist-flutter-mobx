import 'package:mobx/mobx.dart';
part 'list_store.g.dart';

class ListStore = ListStoreBase with _$ListStore;

abstract class ListStoreBase with Store {
  @observable
  String? _todoTitle;

  String? get todoTitle => _todoTitle;

  @action
  void setTodoTitle(String newTitle) => _todoTitle = newTitle;

  @computed
  bool get todoTitleIsValid => todoTitle != null && todoTitle!.isNotEmpty;
}
