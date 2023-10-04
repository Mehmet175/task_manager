/*

© 2023 B1 Digital

User         : mehmetalicubukcu
Project Name : task_manager 
Name         : Mehmet Ali ÇUBUKÇU
Date         : 4.10.2023 23:54
Notes        : 

*/

import 'package:flutter/material.dart';
import 'package:task_manager/app/base/base_view_model.dart';

abstract class BaseView<T extends BaseViewModel> extends StatelessWidget {
  const BaseView({super.key});

  final T? viewModel = null;

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () {

      },
      child: _body(
        context,
        viewModel,
      ),
    );
  }

  Widget _body(BuildContext context, T? viewModel);
  void viewModelReady(T? viewModel) {}
}

class StatefulWrapper extends StatefulWidget {
  const StatefulWrapper({
    super.key,
    required this.onInit,
    required this.child,
  });

  final VoidCallback onInit;
  final Widget child;

  @override
  State<StatefulWrapper> createState() => _StatefulWrapperState();
}

class _StatefulWrapperState extends State<StatefulWrapper> {
  @override
  initState() {
    super.initState();
    widget.onInit();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
