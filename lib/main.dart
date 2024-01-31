import 'package:azrc_demos/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  ScreenUtil.ensureScreenSize().then((value) => runApp(const MyApp()));
}
