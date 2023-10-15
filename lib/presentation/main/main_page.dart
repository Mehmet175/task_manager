/*

© 2023 B1 Digital

User         : mehmetalicubukcu
Project Name : task_manager 
Name         : Mehmet Ali ÇUBUKÇU
Date         : 3.10.2023 23:49
Notes        : 

*/

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/app/base/base_view.dart';
import 'package:task_manager/app/enums/main_page_enum.dart';
import 'package:task_manager/app/resource/app_size.dart';
import 'package:task_manager/app/resource/assets_manager.dart';
import 'package:task_manager/app/resource/color_manager.dart';
import 'package:task_manager/app/resource/string_manager.dart';
import 'package:task_manager/presentation/main/home/home_page.dart';
import 'package:task_manager/presentation/main/main_view_model.dart';

class MainPage extends BaseView<MainViewModel> {
  MainPage({super.key});

  @override
  Widget buildB(BuildContext context) {
    return DefaultTabController(
      length: MainPageEnum.values.length,
      child: Scaffold(
        appBar: _AppBar.appBar(context),
        body: _body(context),
      ),
    );
  }

  Widget _body(BuildContext context) {
    return TabBarView(
      children: MainPageEnum.values
          .map(
            (e) => e.page,
          )
          .toList(),
    );
  }
}

class _ListItem extends StatelessWidget {
  const _ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class _TabBar extends StatelessWidget {
  const _TabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight - 8.0,
      decoration: BoxDecoration(
        color: AppColors.unSelected,
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: TabBar(
        tabs: MainPageEnum.values
            .map(
              (e) => SizedBox(
                width: double.infinity,
                child: Center(
                  child: Text(
                    e.name.tr(),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class _AppBar {
  static AppBar appBar(BuildContext context) => AppBar(
        title: Text(
          AppStrings.messages.tr(),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              IconAssets.more,
              colorFilter: ColorFilter.mode(
                Theme.of(context).appBarTheme.iconTheme!.color!,
                BlendMode.srcIn,
              ),
            ),
            onPressed: () {},
          ),
        ],
        leading: Padding(
          padding: AppSize.paddingL,
          child: SvgPicture.asset(
            IconAssets.chat,
            colorFilter: ColorFilter.mode(
              Theme.of(context).appBarTheme.iconTheme!.color!,
              BlendMode.srcIn,
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(
            kToolbarHeight - 8.0,
          ),
          child: _TabBar(),
        ),
      );
}
