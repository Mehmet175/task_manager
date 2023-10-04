/*

© 2023 B1 Digital

User         : mehmetalicubukcu
Project Name : task_manager 
Name         : Mehmet Ali ÇUBUKÇU
Date         : 4.10.2023 22:41
Notes        : 

*/


import 'package:task_manager/app/resource/assets_manager.dart';

enum MainPageEnum {
  home, chat, createTask, calendar, notification;

  String get name {
    switch (this) {
      case MainPageEnum.home:
        return 'Home';
      case MainPageEnum.chat:
        return 'Chat';
      case MainPageEnum.createTask:
        return 'Create Task';
      case MainPageEnum.calendar:
        return 'Calendar';
      case MainPageEnum.notification:
        return 'Notification';
    }
  }

  String get icon {
    switch (this) {
      case MainPageEnum.home:
        return IconAssets.home;
      case MainPageEnum.chat:
        return IconAssets.chat;
      case MainPageEnum.createTask:
        return IconAssets.add;
      case MainPageEnum.calendar:
        return IconAssets.calender;
      case MainPageEnum.notification:
        return IconAssets.notification;
    }
  }
}
