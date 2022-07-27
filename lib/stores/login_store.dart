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

  @observable
  bool _loggedIn = false;

  String? get email => _email;
  String? get password => _password;
  bool get passwordVisible => _passwordVisible;
  bool get processingLogin => _processingLogin;
  bool get loggedIn => _loggedIn;

  @action
  void setEmail(String newEmail) => _email = newEmail;

  @action
  void setPassword(String newPassword) => _password = newPassword;

  @action
  void toggleVisibility() => _passwordVisible = !_passwordVisible;

  @action
  void toggleProcessingLogin() => _processingLogin = !_processingLogin;

  @action
  void toggleLoggedIn(bool toggle) => _loggedIn = toggle;

  @action
  Future<void> login() async {
    toggleProcessingLogin();
    await Future.delayed(
      const Duration(milliseconds: 1200),
    );
    toggleProcessingLogin();
    toggleLoggedIn(true);
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
  dynamic get loginPressed => (formIsValid && !processingLogin) ? login : null;
}
