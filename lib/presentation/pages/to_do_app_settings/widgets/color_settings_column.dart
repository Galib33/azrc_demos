import 'dart:developer';

import 'package:azrc_demos/constants/app_sized_boxes.dart';
import 'package:azrc_demos/constants/texts/app_titles.dart';
import 'package:azrc_demos/helper/global_control_class.dart';
import 'package:azrc_demos/presentation/pages/to_do_app_settings/widgets/setting_title.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/colors/app_colors.dart';
import '../to_do_app_settings.dart';
import 'setting_container.dart';

class ColorSettingsColumn extends StatelessWidget {
  const ColorSettingsColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SettingTitle(settingTitle: AppTitles.colorTitle),
        AppSizedBoxes.h5,
        ValueListenableBuilder(
            valueListenable:
                GlobalControlClass.instance().colorActivityNotifier,
            builder: (context, Map<String, bool> valueMap, _) {
              Map<String, bool> colorMap = Map.from(valueMap);
              var colorMapKeys = valueMap.keys.toList();
              return Row(
                children: [
                  SettingContainer(
                    active: valueMap[colorMapKeys[0]]!,
                    settingName: colorMapKeys[0],
                    onTap: () {
                      colorMap.updateAll((key, value) =>
                          updateMyMap(key, value, colorMapKeys[0]));
                      GlobalControlClass.instance()
                          .colorActivityNotifier
                          .value = colorMap;
                    },
                  ),
                  SettingContainer(
                    active: valueMap[colorMapKeys[1]]!,
                    settingName: colorMapKeys[1],
                    onTap: () {
                      colorMap.updateAll((key, value) =>
                          updateMyMap(key, value, colorMapKeys[1]));
                      GlobalControlClass.instance()
                          .colorActivityNotifier
                          .value = colorMap;
                    },
                  ),
                  SettingContainer(
                    active: valueMap[colorMapKeys[2]]!,
                    settingName: colorMapKeys[2],
                    onTap: () {
                      colorMap.updateAll((key, value) =>
                          updateMyMap(key, value, colorMapKeys[2]));
                      GlobalControlClass.instance()
                          .colorActivityNotifier
                          .value = colorMap;
                    },
                  ),
                ],
              );
            })
      ],
    );
  }

  
}
