/*

© 2023 B1 Digital

User         : mehmetalicubukcu
Project Name : task_manager 
Name         : Mehmet Ali ÇUBUKÇU
Date         : 3.10.2023 23:48
Notes        : 

*/

import 'package:flutter/material.dart';
import 'package:task_manager/app/base/base_view.dart';
import 'package:task_manager/presentation/main/home/home_view_model.dart';

class HomePage extends BaseView<HomeViewModel> {
  HomePage({super.key});

  @override
  Widget buildB() {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return Container();
  }

}
