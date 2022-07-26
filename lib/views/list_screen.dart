import 'package:flutter/material.dart';
import 'package:mobx_todo_list/views/login_screen.dart';
import 'package:mobx_todo_list/widgets/custom_icon_button.dart';
import 'package:mobx_todo_list/widgets/custom_text_field.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: const EdgeInsets.fromLTRB(32, 0, 32, 32),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 2,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Tarefas',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 32,
                      ),
                    ),
                    IconButton(
                      iconSize: 32,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (_) => const LoginScreen(),
                          ),
                        );
                      },
                      color: Colors.white,
                      icon: const Icon(
                        Icons.exit_to_app,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 16,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: <Widget>[
                        CustomTextField(
                          hintText: 'Tarefa',
                          onChanged: (todo) {},
                          suffix: CustomIconButton(
                            radius: 12,
                            iconData: Icons.add,
                            onTap: () {},
                          ),
                          enabled: true,
                          textInputType: TextInputType.text,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Expanded(
                          child: ListView.separated(
                            itemBuilder: (_, index) {
                              return ListTile(
                                title: Text('Item $index'),
                                onTap: () {},
                              );
                            },
                            separatorBuilder: (_, __) {
                              return const Divider();
                            },
                            itemCount: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
