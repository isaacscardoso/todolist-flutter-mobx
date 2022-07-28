import 'package:flutter/material.dart';
import 'package:mobx_todo_list/ui/views/login_screen.dart';

class ConfirmLogouModal extends StatelessWidget {
  const ConfirmLogouModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Saindo'),
      content: const Text('Deseja sair da conta?'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => const LoginScreen(),
            ),
          ),
          child: const Text('Sim'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Não'),
        ),
      ],
    );
  }
}
