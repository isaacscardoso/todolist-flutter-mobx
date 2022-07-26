// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on LoginStoreBase, Store {
  Computed<bool>? _$emailIsValidComputed;

  @override
  bool get emailIsValid =>
      (_$emailIsValidComputed ??= Computed<bool>(() => super.emailIsValid,
              name: 'LoginStoreBase.emailIsValid'))
          .value;
  Computed<bool>? _$passwordIsValidComputed;

  @override
  bool get passwordIsValid =>
      (_$passwordIsValidComputed ??= Computed<bool>(() => super.passwordIsValid,
              name: 'LoginStoreBase.passwordIsValid'))
          .value;
  Computed<bool>? _$formIsValidComputed;

  @override
  bool get formIsValid =>
      (_$formIsValidComputed ??= Computed<bool>(() => super.formIsValid,
              name: 'LoginStoreBase.formIsValid'))
          .value;

  late final _$_emailAtom =
      Atom(name: 'LoginStoreBase._email', context: context);

  @override
  String? get _email {
    _$_emailAtom.reportRead();
    return super._email;
  }

  @override
  set _email(String? value) {
    _$_emailAtom.reportWrite(value, super._email, () {
      super._email = value;
    });
  }

  late final _$_passwordAtom =
      Atom(name: 'LoginStoreBase._password', context: context);

  @override
  String? get _password {
    _$_passwordAtom.reportRead();
    return super._password;
  }

  @override
  set _password(String? value) {
    _$_passwordAtom.reportWrite(value, super._password, () {
      super._password = value;
    });
  }

  late final _$LoginStoreBaseActionController =
      ActionController(name: 'LoginStoreBase', context: context);

  @override
  void setEmail(String newEmail) {
    final _$actionInfo = _$LoginStoreBaseActionController.startAction(
        name: 'LoginStoreBase.setEmail');
    try {
      return super.setEmail(newEmail);
    } finally {
      _$LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String newPassword) {
    final _$actionInfo = _$LoginStoreBaseActionController.startAction(
        name: 'LoginStoreBase.setPassword');
    try {
      return super.setPassword(newPassword);
    } finally {
      _$LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
emailIsValid: ${emailIsValid},
passwordIsValid: ${passwordIsValid},
formIsValid: ${formIsValid}
    ''';
  }
}
