import 'package:azrc_demos/presentation/pages/nar%20mobile/home/nar_home_page.dart';
import 'package:azrc_demos/presentation/pages/streams/other_stream.dart';
import 'package:azrc_demos/presentation/pages/streams/streams.dart';
import 'package:azrc_demos/presentation/pages/to_do_app_settings/to_do_app_settings.dart';
import 'package:azrc_demos/themes/theme_datas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constants/colors/app_colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeDatas.generalAppTheme,
          home: child,
        );
      },
      child: const NarHomePage(),
    );
  }
}
