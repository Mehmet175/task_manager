import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/app/di/di.dart';
import 'package:task_manager/app/resource/language_manager.dart';
import 'package:task_manager/app/resource/theme_manager.dart';
import 'package:task_manager/presentation/auth/login_page.dart';
import 'package:task_manager/presentation/main/home/home_page.dart';
import 'package:task_manager/presentation/main/main_page.dart';

Future<void> main() async{
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: LanguageType.values.map((e) => e.getLocal).toList(),
      path: assetsPathLocalizations,
      fallbackLocale: LanguageType.turkish.getLocal,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeManager.defaultTheme,
      home: MainPage(),
    );
  }
}
