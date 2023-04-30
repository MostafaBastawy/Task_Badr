import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_badr/utilis/styles/colors_manager.dart';

ThemeData lightTheme(BuildContext context) => ThemeData(
      useMaterial3: false,
      scaffoldBackgroundColor: ColorsManager.fffffff,
      fontFamily: 'Alexandria',
      appBarTheme: AppBarTheme(
        toolbarTextStyle: const TextStyle(
          fontFamily: 'Alexandria',
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
          systemStatusBarContrastEnforced: true,
        ),
        color: ColorsManager.fffffff,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: ColorsManager.fffffff,
        ),
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: ColorsManager.fffffff,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          fontSize: 18.sp,
          fontFamily: 'Alexandria',
        ),
      ),
    );

ThemeData darkTheme = ThemeData();
