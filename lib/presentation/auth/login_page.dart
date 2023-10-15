/*

© 2023 B1 Digital

User         : mehmetalicubukcu
Project Name : task_manager 
Name         : Mehmet Ali ÇUBUKÇU
Date         : 3.10.2023 22:15
Notes        : 

*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/app/resource/app_size.dart';
import 'package:task_manager/app/resource/assets_manager.dart';
import 'package:task_manager/app/resource/color_manager.dart';
import 'package:task_manager/app/resource/font_manager.dart';
import 'package:task_manager/presentation/main/home/home_page.dart';
import 'package:task_manager/presentation/main/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: _body(context),
      ),
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
  _Form({super.key});

  final ValueNotifier<bool> obscureText = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Kullanıcı Adı",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: AppSize.sizeS),
        TextFormField(
          style: _textStyle(context),
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: AppSize.paddingL,
              child: SvgPicture.asset(IconAssets.user),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            fillColor: Theme.of(context).colorScheme.secondary,
            filled: true,
          ),
        ),
        const SizedBox(height: AppSize.sizeL),
        Text(
          "Şifre",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: AppSize.sizeS),
        ValueListenableBuilder(
          valueListenable: obscureText,
          builder: (context, value, child) => TextFormField(
            style: _textStyle(context),
            obscureText: value,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: AppSize.paddingL,
                child: SvgPicture.asset(IconAssets.password),
              ),
              suffixIcon: Padding(
                padding: AppSize.paddingL,
                child: InkWell(
                  onTap: () => obscureText.value = !obscureText.value,
                  child: Icon(
                    obscureText.value ? Icons.visibility : Icons.visibility_off,
                    color: AppColors.white,
                  ),
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              fillColor: Theme.of(context).colorScheme.secondary,
              filled: true,
            ),
          ),
        ),
        const SizedBox(height: AppSize.sizeXXL),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.onBackground,
                  padding: AppSize.paddingXLVer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Text(
                  "Giriş Yap",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  TextStyle? _textStyle(BuildContext context) =>
      Theme.of(context).textTheme.headlineLarge?.copyWith(
            fontSize: FontSize.s18,
            fontWeight: FontWeightManager.regular,
          );
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
