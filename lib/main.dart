import 'package:flutter/material.dart';
import 'package:mobx_todo_list/components/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Tarefas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent,
        scaffoldBackgroundColor: Colors.deepPurpleAccent,
        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: Colors.deepOrangeAccent),
      ),
      home: const LoginScreen(),
    );
  }
}
