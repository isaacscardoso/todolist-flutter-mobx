import 'package:flutter/material.dart';
import 'package:mobx_todo_list/stores/login_store.dart';
import 'package:mobx_todo_list/ui/views/list_screen.dart';
import 'package:mobx_todo_list/ui/widgets/custom_icon_button.dart';
import 'package:mobx_todo_list/ui/widgets/custom_text_field.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginStore loginStore = LoginStore();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(14),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 16,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Observer(
                    builder: (_) {
                      return CustomTextField(
                        hintText: 'E-mail',
                        prefix: const Icon(
                          Icons.account_circle,
                          size: 20,
                        ),
                        textInputType: TextInputType.emailAddress,
                        onChanged: loginStore.setEmail,
                        enabled: !loginStore.processingLogin,
                      );
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Observer(
                    builder: (_) {
                      return CustomTextField(
                        hintText: 'Senha',
                        prefix: const Icon(
                          Icons.lock,
                          size: 20,
                        ),
                        suffix: CustomIconButton(
                          radius: 12,
                          iconSize: 20,
                          iconData: loginStore.passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          onTap: loginStore.toggleVisibility,
                        ),
                        textInputType: TextInputType.visiblePassword,
                        obscure: !loginStore.passwordVisible,
                        onChanged: loginStore.setPassword,
                        enabled: !loginStore.processingLogin,
                      );
                    },
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: 132,
                    height: 44,
                    child: Observer(
                      builder: (_) {
                        return ElevatedButton(
                          onPressed: loginStore.loginPressed,
                          style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          child: loginStore.processingLogin
                              ? const CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation(
                                    Colors.deepPurpleAccent,
                                  ),
                                )
                              : const Text('Entrar'),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
