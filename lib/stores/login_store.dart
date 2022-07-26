import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = LoginStoreBase with _$LoginStore;

abstract class LoginStoreBase with Store {
  @observable
  String? _email;
  @observable
  String? _password;

  String? get email => _email;
  String? get password => _password;

  @action
  void setEmail(String newEmail) => _email = newEmail;
  @action
  void setPassword(String newPassword) => _password = newPassword;

  @computed
  bool get emailIsValid {
    if (email != null) {
      return RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(email!);
    }
    return false;
  }

  @computed
  bool get passwordIsValid {
    if (password != null) {
      return password!.length >= 6;
    }
    return false;
  }

  @computed
  bool get formIsValid => emailIsValid && passwordIsValid;
}
