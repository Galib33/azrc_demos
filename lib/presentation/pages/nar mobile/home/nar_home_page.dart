import 'package:flutter/material.dart';

import '../../../../constants/colors/app_colors.dart';

class NarHomePage extends StatelessWidget {
  const NarHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffD43157),
      body: Padding(
        padding: EdgeInsets.only(top:135.0),
        child: Expanded(
          child: ColoredBox(
            color: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
