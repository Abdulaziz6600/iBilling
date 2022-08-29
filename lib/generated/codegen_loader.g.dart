// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> uz_UZ = {
  "Contracts": "kantra",
  "Choose a language": "Tilni tanlang"
};
static const Map<String,dynamic> ru_RU = {
  "Contracts": "Kontract",
  "Graphic": "Grafic",
  "Date of birth:": "Tugilgan kun",
  "Phone number:": "Grafic",
  "E-mail:": "Grafic"
};
static const Map<String,dynamic> en_EN = {
  "Contracts": "Contracts"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"uz_UZ": uz_UZ, "ru_RU": ru_RU, "en_EN": en_EN};
}
