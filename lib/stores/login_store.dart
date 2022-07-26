import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = LoginStoreBase with _$LoginStore;

abstract class LoginStoreBase with Store {
  @observable
  String? _email;
  @observable
  String? _password;

  LoginStoreBase() {
    autorun((_) {
      print(email);
      print(password);
    });
  }

  @action
  void setEmail(String newEmail) => _email = newEmail;
  @action
  void setPassword(String newPassword) => _password = newPassword;

  String? get email => _email;
  String? get password => _password;
}
