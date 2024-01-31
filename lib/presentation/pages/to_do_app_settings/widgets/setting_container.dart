import 'package:azrc_demos/constants/app_paddings.dart';
import 'package:azrc_demos/enums/enums.dart';
import 'package:azrc_demos/helper/global_control_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/app_border_radiuses.dart';
import '../../../../constants/colors/app_colors.dart';

class SettingContainer extends StatelessWidget {
  final bool active;
  final String settingName;
  final bool? isThemeSettting;
  final IconData? iconData;
  final void Function() onTap;
  const SettingContainer(
      {super.key,
      required this.active,
      required this.settingName,
      this.isThemeSettting = false,
      this.iconData = Icons.sunny,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            border: active ? null : Border.all(color: AppColors.lightGrayColor),
            borderRadius: AppBorderRadiuses.c8,
            color: active ? AppColors.lightPurpleColor : AppColors.whiteColor),
        margin: AppPaddings.rigth5,
        padding: EdgeInsets.only(
            left: isThemeSettting! ? 8.w : 16.0.w,
            right: 16.w,
            top: 6.h,
            bottom: 6.h),
        child: Row(
          children: [
            if (isThemeSettting!) ...[
              Icon(
                iconData,
                color: AppColors.primaryColor,
              ),
              8.horizontalSpace,
            ],
            Text(
              settingName,
              style: TextStyle(
                  color: active
                      ? AppColors.darkPurpleColor
                      : AppColors.lightTextGrayColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp),
            ),
          ],
        ),
      ),
    );
  }
}
