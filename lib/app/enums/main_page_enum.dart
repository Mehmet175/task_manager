/*

© 2023 B1 Digital

User         : mehmetalicubukcu
Project Name : task_manager 
Name         : Mehmet Ali ÇUBUKÇU
Date         : 4.10.2023 22:41
Notes        : 

*/

import 'package:flutter/cupertino.dart';
import 'package:task_manager/app/resource/assets_manager.dart';
import 'package:task_manager/app/resource/string_manager.dart';
import 'package:task_manager/presentation/main/chat_list/chat_list_page.dart';
import 'package:task_manager/presentation/main/group_list/group_list_page.dart';

enum MainPageEnum {
  chats,
  groups;

  String get name => switch (this) {
        MainPageEnum.chats => AppStrings.chats,
        MainPageEnum.groups =>  AppStrings.groups,
      };

  Widget get page => switch (this) {
        MainPageEnum.chats => ChatListPage(),
        MainPageEnum.groups => GroupListPage(),
      };

}
