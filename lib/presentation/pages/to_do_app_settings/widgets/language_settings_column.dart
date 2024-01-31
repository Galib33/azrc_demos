import 'package:azrc_demos/constants/app_sized_boxes.dart';
import 'package:azrc_demos/constants/texts/app_titles.dart';
import 'package:azrc_demos/helper/global_control_class.dart';
import 'package:azrc_demos/presentation/pages/to_do_app_settings/widgets/setting_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/colors/app_colors.dart';
import '../to_do_app_settings.dart';
import 'setting_container.dart';

class LanguageSettingsColumn extends StatelessWidget {
  const LanguageSettingsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SettingTitle(settingTitle: AppTitles.languageTitle),
        AppSizedBoxes.h5,
        ValueListenableBuilder(
            valueListenable:
                GlobalControlClass.instance().languagesActivityNotifier,
            builder: (context, Map<String, bool> valueMap, _) {
              Map<String, bool> languageMap = Map.from(valueMap);
              var languageMapKeys = valueMap.keys.toList();
              return Row(
                children: [
                  SettingContainer(
                    active: valueMap[languageMapKeys[0]]!,
                    settingName: languageMapKeys[0],
                    onTap: () {
                      languageMap.updateAll((key, value) =>
                          updateMyMap(key, value, languageMapKeys[0]));
                      GlobalControlClass.instance()
                          .languagesActivityNotifier
                          .value = languageMap;
                    },
                  ),
                  SettingContainer(
                    active: valueMap[languageMapKeys[1]]!,
                    settingName: languageMapKeys[1],
                    onTap: () {
                      languageMap.updateAll((key, value) =>
                          updateMyMap(key, value, languageMapKeys[1]));
                      GlobalControlClass.instance()
                          .languagesActivityNotifier
                          .value = languageMap;
                    },
                  ),
                  SettingContainer(
                    active: valueMap[languageMapKeys[2]]!,
                    settingName: languageMapKeys[2],
                    onTap: () {
                      languageMap.updateAll((key, value) =>
                          updateMyMap(key, value, languageMapKeys[2]));
                      GlobalControlClass.instance()
                          .languagesActivityNotifier
                          .value = languageMap;
                    },
                  ),
                ],
              );
            })
      ],
    );
  }
}
