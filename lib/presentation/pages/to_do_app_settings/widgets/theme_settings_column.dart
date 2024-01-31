import 'dart:developer';

import 'package:azrc_demos/constants/app_sized_boxes.dart';
import 'package:azrc_demos/constants/texts/app_titles.dart';
import 'package:azrc_demos/helper/global_control_class.dart';
import 'package:azrc_demos/presentation/pages/to_do_app_settings/widgets/setting_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/colors/app_colors.dart';
import '../to_do_app_settings.dart';
import 'setting_container.dart';

class ThemeSettingsColumn extends StatelessWidget {
  const ThemeSettingsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SettingTitle(settingTitle: AppTitles.themeTitle),
        AppSizedBoxes.h5,
        ValueListenableBuilder(
            valueListenable:
                GlobalControlClass.instance().themeActivityNotifier,
            builder: (context, Map<String, bool> valueMap, _) {
              Map<String, bool> themeMap = Map.from(valueMap);
              var themeMapKeys = valueMap.keys.toList();
              return Row(
                children: [
                  SettingContainer(
                    isThemeSettting: true,
                    active: valueMap[themeMapKeys[0]]!,
                    settingName: themeMapKeys[0],
                    onTap: () {
                      themeMap.updateAll((key, value) =>
                          updateMyMap(key, value, themeMapKeys[0]));
                      GlobalControlClass.instance()
                          .themeActivityNotifier
                          .value = themeMap;
                    },
                  ),
                  SettingContainer(
                    isThemeSettting: true,
                    iconData: Icons.nightlight_round_outlined,
                    active: valueMap[themeMapKeys[1]]!,
                    settingName: themeMapKeys[1],
                    onTap: () {
                      themeMap.updateAll((key, value) =>
                          updateMyMap(key, value, themeMapKeys[1]));
                      GlobalControlClass.instance()
                          .themeActivityNotifier
                          .value = themeMap;
                    },
                  ),
                ],
              );
            })
      ],
    );
  }
}
