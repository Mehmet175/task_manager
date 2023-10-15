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
import 'package:task_manager/app/di/di.dart';

abstract class BaseView<T extends BaseViewModel> extends StatelessWidget {
  BaseView({super.key});

  final T viewModel = getIt<T>();

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () => onInit.call(context),
      dispose: () => dispose.call(context),
      child: buildB(context),
    );
  }

  Widget buildB(BuildContext context);
  void onInit(BuildContext context) {}
  void dispose(BuildContext context) {}
}

class StatefulWrapper extends StatefulWidget {
  const StatefulWrapper({
    super.key,
    required this.onInit,
    required this.child,
    required this.dispose,
  });

  final VoidCallback onInit;
  final VoidCallback dispose;
  final Widget child;

  @override
  State<StatefulWrapper> createState() => _StatefulWrapperState();
}

class _StatefulWrapperState extends State<StatefulWrapper> {
  @override
  initState() {
    widget.onInit();
    super.initState();
  }

  @override
  void dispose() {
    widget.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
