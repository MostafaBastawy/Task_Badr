import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_badr/utilis/styles/colors_manager.dart';

ThemeData lightTheme(BuildContext context) => ThemeData(
      useMaterial3: false,
      scaffoldBackgroundColor: ColorsManager.fffffff,
      fontFamily:
          EasyLocalization.of(context)!.currentLocale == const Locale('en')
              ? 'Poppins'
              : 'ALJazeera',
      appBarTheme: AppBarTheme(
        toolbarTextStyle: TextStyle(
          fontFamily:
              EasyLocalization.of(context)!.currentLocale == const Locale('en')
                  ? 'Poppins'
                  : 'ALJazeera',
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
          systemStatusBarContrastEnforced: true,
        ),
        color: ColorsManager.fffffff,
        elevation: 0.0,
        iconTheme: const IconThemeData(
            // color: ColorsManager.f16C4BB,
            ),
        centerTitle: false,
        titleTextStyle: TextStyle(
          // color: ColorsManager.f0B395E,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          fontSize: 18.sp,
          fontFamily:
              EasyLocalization.of(context)!.currentLocale == const Locale('en')
                  ? 'Poppins'
                  : 'ALJazeera',
        ),
        //   actionsIconTheme: const IconThemeData(color: ColorsManager.f0B395E),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
    );
ThemeData darkTheme = ThemeData();
