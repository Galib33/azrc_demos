import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app_border_radiuses.dart';

class AppRoundBorders {
  AppRoundBorders._();

  static RoundedRectangleBorder get bottomRadius16 => RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(bottom: const Radius.circular(16).r));
}
