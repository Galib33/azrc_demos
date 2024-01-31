import 'package:azrc_demos/constants/app_border_radiuses.dart';
import 'package:azrc_demos/constants/app_paddings.dart';
import 'package:azrc_demos/constants/app_sized_boxes.dart';
import 'package:azrc_demos/constants/texts/app_titles.dart';
import 'package:azrc_demos/helper/global_control_class.dart';
import 'package:azrc_demos/presentation/pages/to_do_app_settings/widgets/color_settings_column.dart';
import 'package:azrc_demos/presentation/pages/to_do_app_settings/widgets/language_settings_column.dart';
import 'package:azrc_demos/presentation/pages/to_do_app_settings/widgets/setting_container.dart';
import 'package:azrc_demos/presentation/pages/to_do_app_settings/widgets/theme_settings_column.dart';
import 'package:azrc_demos/presentation/widgets/global_divider_widget.dart';
import 'package:azrc_demos/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors/app_colors.dart';

bool updateMyMap(String key, bool value, String mapKey) {
  if (key == mapKey) {
    return value = true;
  } else {
    return value = false;
  }
}

class ToDoAppSettings extends StatelessWidget {
  const ToDoAppSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppPaddings.horz20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const GlobalDividerWidget(),
            AppSizedBoxes.h12,
            Text(
              AppTitles.generalTitle,
              style: AppTextStyle.primary14,
            ),
            AppSizedBoxes.h12,
            const ColorSettingsColumn(),
            AppSizedBoxes.h20,
            const LanguageSettingsColumn(),
            AppSizedBoxes.h20,
            const ThemeSettingsColumn(),
            AppSizedBoxes.h12,
            const GlobalDividerWidget(),
          ],
        ),
      ),
    );
  }
}
