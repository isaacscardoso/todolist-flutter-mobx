import 'package:flutter/material.dart';
import 'package:mobx_todo_list/views/list_screen.dart';
import 'package:mobx_todo_list/widgets/custom_icon_button.dart';
import 'package:mobx_todo_list/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  CustomTextField(
                    hintText: 'E-mail',
                    prefix: const Icon(Icons.account_circle),
                    textInputType: TextInputType.emailAddress,
                    onChanged: (email) {},
                    enabled: true,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CustomTextField(
                    hintText: 'Senha',
                    prefix: const Icon(Icons.lock),
                    suffix: CustomIconButton(
                      radius: 12,
                      iconData: Icons.visibility,
                      onTap: () {},
                    ),
                    textInputType: TextInputType.visiblePassword,
                    obscure: true,
                    onChanged: (password) {},
                    enabled: true,
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: 132,
                    height: 44,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (_) => const ListScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: const Text('Login'),
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
