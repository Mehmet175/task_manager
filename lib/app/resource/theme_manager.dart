/*

© 2023 B1 Digital

User         : mehmetalicubukcu
Project Name : task_manager 
Name         : Mehmet Ali ÇUBUKÇU
Date         : 3.10.2023 22:28
Notes        : 

*/

import 'package:flutter/material.dart';
import 'package:task_manager/app/resource/app_size.dart';
import 'package:task_manager/app/resource/color_manager.dart';
import 'package:task_manager/app/resource/font_manager.dart';

class ThemeManager {
  ThemeManager._();

  static final defaultTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.primary,
    fontFamily: FontConstants.fontFamilyInter,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primary,
      titleTextStyle: const TextStyle(
        color: AppColors.white,
        fontWeight: FontWeightManager.medium,
        fontSize: FontSize.s20,
      ),
      actionsIconTheme: IconThemeData(
        color: AppColors.white.withOpacity(.6),
      ),
      iconTheme: IconThemeData(
        color: AppColors.white.withOpacity(.6),
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.secondary,
      secondary: AppColors.secondary,
      onBackground: AppColors.third,
      onSecondary: AppColors.white,
    ),
    tabBarTheme: const TabBarTheme(
      labelColor: AppColors.black,
      unselectedLabelColor: AppColors.white,
      indicator: BoxDecoration(
        color: AppColors.third,
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      labelStyle: TextStyle(
        fontSize: FontSize.s14,
        fontWeight: FontWeightManager.medium,
      ),
      dividerColor: AppColors.primary,
    ),
    useMaterial3: true,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: AppColors.white,
        fontSize: FontSize.s26,
        fontWeight: FontWeightManager.semiBold,
      ),
      titleMedium: TextStyle(
        color: AppColors.textPrimary,
        fontSize: FontSize.s18,
      ),
      titleLarge: TextStyle(
        color: AppColors.black,
        fontSize: FontSize.s18,
        fontWeight: FontWeightManager.semiBold,
      ),
      bodyMedium: TextStyle(
        color: AppColors.unSelectedTextColor,
        fontSize: FontSize.s14,
      ),
    ),
  );
}
