/*

© 2023 B1 Digital

User         : mehmetalicubukcu
Project Name : task_manager 
Name         : Mehmet Ali ÇUBUKÇU
Date         : 15.10.2023 21:40
Notes        : 

*/

import 'package:flutter/material.dart';
import 'package:task_manager/app/base/base_view.dart';
import 'package:task_manager/app/resource/font_manager.dart';
import 'package:task_manager/presentation/main/chat_list/chat_list_view_model.dart';

class ChatListPage extends BaseView<ChatListViewModel> {
  ChatListPage({super.key});

  @override
  Widget buildB(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return ListView.builder(
      itemCount: 40,
      itemBuilder: (context, index) => _ListItem(),
    );
  }
}

class _ListItem extends StatelessWidget {
  const _ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        child: Text(
          'MA',
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontSize: FontSize.s15,
              ),
        ),
      ),
      title: Text(
        'Mehmet Ali ÇUBUKÇU',
        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              fontSize: FontSize.s14,
            ),
      ),
      subtitle: Text(
        "Hi, please check the last task, that I....",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      trailing: Text(
        '12:30',
        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              fontSize: FontSize.s8,
            ),
      ),
    );
  }
}
