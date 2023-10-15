/*

© 2023 B1 Digital

User         : mehmetalicubukcu
Project Name : task_manager 
Name         : Mehmet Ali ÇUBUKÇU
Date         : 15.10.2023 20:42
Notes        : 

*/

import 'package:flutter/material.dart';
import 'package:task_manager/app/resource/string_manager.dart';

enum LanguageType {
  turkish, english;

  String getValue() {
    switch (this) {
      case LanguageType.english:
        return englishS;
      case LanguageType.turkish:
        return turkishS;
    }
  }

  Locale get getLocal{
    switch(this) {
      case LanguageType.turkish:
        return turkishLocal;
      case LanguageType.english:
        return englishLocal;
    }
  }

  String get getTitle{
    switch(this) {
      case LanguageType.turkish:
        return AppStrings.turkish;
      case LanguageType.english:
        return AppStrings.english;
    }
  }
}

const String turkishS = "tr";
const String englishS = "en";
const String assetsPathLocalizations = "assets/translations";
const Locale turkishLocal = Locale("tr");
const Locale englishLocal = Locale("en");