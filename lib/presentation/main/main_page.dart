/*

© 2023 B1 Digital

User         : mehmetalicubukcu
Project Name : task_manager 
Name         : Mehmet Ali ÇUBUKÇU
Date         : 3.10.2023 23:49
Notes        : 

*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/app/base/base_view.dart';
import 'package:task_manager/app/enums/main_page_enum.dart';
import 'package:task_manager/presentation/main/home/home_page.dart';
import 'package:task_manager/presentation/main/main_view_model.dart';

class MainPage extends BaseView<MainViewModel> {
  MainPage({super.key});

  @override
  Widget buildB() {
    return Scaffold(
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Column(
      children: [

      ],
    );
  }
}
