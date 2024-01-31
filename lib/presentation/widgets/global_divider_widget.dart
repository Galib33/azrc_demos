import 'package:azrc_demos/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class GlobalDividerWidget extends StatelessWidget {
  const GlobalDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1,
      height: 0,
      color: AppColors.blackColor.withOpacity(0.12),
    );
  }
}
