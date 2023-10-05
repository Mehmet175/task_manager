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
      bottomNavigationBar: _BottomNavigationBar(
        viewModel: viewModel,
      ),
    );
  }

  Widget _body(BuildContext context) {
    return HomePage();
  }
}

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar({
    super.key,
    required this.viewModel,
  });

  final MainViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: viewModel.outputMainPageEnum,
      builder: (context, snapshot) {
        final current = MainPageEnum.values.firstWhere(
          (element) => (snapshot.data ?? MainPageEnum.home) == element,
        );
        return BottomNavigationBar(
          items: MainPageEnum.values
              .map(
                (e) => BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    e.icon,
                  ),
                  label: e.name,
                ),
              )
              .toList(),
          currentIndex: current.index,
          selectedItemColor: Colors.amber[800],
          onTap: (value) =>
              viewModel.setMainPageEnum(MainPageEnum.values[value]),
        );
      },
    );
  }
}
