import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = LoginStoreBase with _$LoginStore;

abstract class LoginStoreBase with Store {
  @observable
  String? _email;

  @observable
  String? _password;

  @observable
  bool _passwordVisible = false;

  @observable
  bool _processingLogin = false;

  String? get email => _email;
  String? get password => _password;
  bool get passwordVisible => _passwordVisible;
  bool get processingLogin => _processingLogin;

  @action
  void setEmail(String newEmail) => _email = newEmail;

  @action
  void setPassword(String newPassword) => _password = newPassword;

  @action
  void toggleVisibility() => _passwordVisible = !_passwordVisible;

  @action
  void toggleProcessingLogin() => _processingLogin = !_processingLogin;

  @action
  Future<void> login() async {
    toggleProcessingLogin();
    await Future.delayed(const Duration(seconds: 2), () => "2");
    toggleProcessingLogin();
  }

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

  @computed
  Future<void> Function()? get loginPressed =>
      (formIsValid && !processingLogin) ? login : null;
}
