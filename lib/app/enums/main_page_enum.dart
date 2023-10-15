/*

© 2023 B1 Digital

User         : mehmetalicubukcu
Project Name : task_manager 
Name         : Mehmet Ali ÇUBUKÇU
Date         : 4.10.2023 22:41
Notes        : 

*/

import 'package:task_manager/app/resource/assets_manager.dart';
import 'package:task_manager/app/resource/string_manager.dart';

enum MainPageEnum {
  chats,
  groups;

  String get name => switch (this) {
        MainPageEnum.chats => AppStrings.chats,
        MainPageEnum.groups =>  AppStrings.groups,
      };

}
