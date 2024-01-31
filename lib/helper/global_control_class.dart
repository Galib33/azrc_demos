import 'package:azrc_demos/enums/enums.dart';
import 'package:flutter/material.dart';

class GlobalControlClass {
  GlobalControlClass._();
  static GlobalControlClass? _globalControlClass;

  factory GlobalControlClass.instance() {
    _globalControlClass ??= GlobalControlClass._();

    return _globalControlClass!;
  }

  static Map<String, bool> colorActivityMap = {
    DesignColors.Purple.name: true,
    DesignColors.Blue.name: false,
    DesignColors.Yellow.name: false
  };
  static Map<String, bool> languagesActivityMap = {
    Languages.English.name: true,
    Languages.French.name: false,
    Languages.Spanish.name: false
  };
  static Map<String, bool> themeActivityMap = {
    Themes.Light.name: true,
    Themes.Dark.name: false,
  };

  ValueNotifier<Map<String, bool>> colorActivityNotifier =
      ValueNotifier(colorActivityMap);
  ValueNotifier<Map<String, bool>> languagesActivityNotifier = ValueNotifier({
    Languages.English.name: true,
    Languages.French.name: false,
    Languages.Spanish.name: false
  });
  ValueNotifier<Map<String, bool>> themeActivityNotifier =
      ValueNotifier(themeActivityMap);
}
