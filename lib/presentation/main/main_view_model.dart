/*

© 2023 B1 Digital

User         : mehmetalicubukcu
Project Name : task_manager 
Name         : Mehmet Ali ÇUBUKÇU
Date         : 4.10.2023 22:36
Notes        : 

*/

import 'dart:async';

import 'package:task_manager/app/base/base_view_model.dart';
import 'package:task_manager/app/enums/main_page_enum.dart';

class MainViewModel extends BaseViewModel
    with MainViewModelInput, MainViewModelOutput {

  final StreamController<MainPageEnum> _mainPageEnumStreamController =
      StreamController<MainPageEnum>.broadcast();

  @override
  Stream<MainPageEnum> get outputMainPageEnum =>
      _mainPageEnumStreamController.stream;

  @override
  Sink<MainPageEnum> get inputMainPageEnum =>
      _mainPageEnumStreamController.sink;

  @override
  void setMainPageEnum(MainPageEnum mainPageEnum) {
    inputMainPageEnum.add(mainPageEnum);
  }
}

mixin MainViewModelInput {
  Sink<MainPageEnum> get inputMainPageEnum;

  void setMainPageEnum(MainPageEnum mainPageEnum);
}

mixin MainViewModelOutput {
  Stream<MainPageEnum> get outputMainPageEnum;
}
