import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_todo_list/stores/list_store.dart';
import 'package:mobx_todo_list/ui/views/login_screen.dart';
import 'package:mobx_todo_list/ui/widgets/confirm_logout_modal.dart';
import 'package:mobx_todo_list/ui/widgets/custom_icon_button.dart';
import 'package:mobx_todo_list/ui/widgets/custom_text_field.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  ListStore listStore = ListStore();

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
                      onPressed: () => showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            const ConfirmLogouModal(),
                      ),
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
                        Observer(
                          builder: (_) {
                            return CustomTextField(
                              hintText: 'nova tarefa',
                              onChanged: listStore.setTodoTitle,
                              suffix: listStore.todoTitleIsValid
                                  ? CustomIconButton(
                                      radius: 12,
                                      iconSize: 20,
                                      iconData: Icons.add,
                                      onTap: () {},
                                    )
                                  : null,
                              enabled: true,
                              textInputType: TextInputType.text,
                            );
                          },
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
