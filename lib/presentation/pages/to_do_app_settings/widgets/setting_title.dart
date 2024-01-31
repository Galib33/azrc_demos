import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/colors/app_colors.dart';

class SettingTitle extends StatelessWidget {
  final String settingTitle;

  const SettingTitle({super.key, required this.settingTitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      settingTitle,
      style: TextStyle(
          color: AppColors.customBlackColor,
          fontWeight: FontWeight.w500,
          fontSize: 12.sp),
    );
  }
}
