// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ListStore on ListStoreBase, Store {
  Computed<bool>? _$todoTitleIsValidComputed;

  @override
  bool get todoTitleIsValid => (_$todoTitleIsValidComputed ??= Computed<bool>(
          () => super.todoTitleIsValid,
          name: 'ListStoreBase.todoTitleIsValid'))
      .value;

  late final _$_todoTitleAtom =
      Atom(name: 'ListStoreBase._todoTitle', context: context);

  @override
  String? get _todoTitle {
    _$_todoTitleAtom.reportRead();
    return super._todoTitle;
  }

  @override
  set _todoTitle(String? value) {
    _$_todoTitleAtom.reportWrite(value, super._todoTitle, () {
      super._todoTitle = value;
    });
  }

  late final _$ListStoreBaseActionController =
      ActionController(name: 'ListStoreBase', context: context);

  @override
  void setTodoTitle(String newTitle) {
    final _$actionInfo = _$ListStoreBaseActionController.startAction(
        name: 'ListStoreBase.setTodoTitle');
    try {
      return super.setTodoTitle(newTitle);
    } finally {
      _$ListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todoTitleIsValid: ${todoTitleIsValid}
    ''';
  }
}
