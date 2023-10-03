/*

© 2023 B1 Digital

User         : mehmetalicubukcu
Project Name : task_manager 
Name         : Mehmet Ali ÇUBUKÇU
Date         : 3.10.2023 22:15
Notes        : 

*/

import 'package:flutter/material.dart';
import 'package:task_manager/app/resource/app_size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Container(
      margin: AppSize.marginXLHor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          _Header(),
          const SizedBox(height: 25),
          _Form(),
          Spacer(),
        ],
      ),
    );
  }
}

class _Form extends StatelessWidget {
  const _Form({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "E-Posta Adresi",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        TextFormField(),
        const SizedBox(height: 16),
        Text(
          "Şifre",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        TextFormField(),
      ],
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Tekrar Hoşgeldiniz!",
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }
}
