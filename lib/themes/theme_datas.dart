import 'package:flutter/material.dart';

import 'app_text_style.dart';
import '../constants/colors/app_colors.dart';

class ThemeDatas {
  ThemeDatas._();

  static ThemeData generalAppTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
    useMaterial3: true,
  );
}
