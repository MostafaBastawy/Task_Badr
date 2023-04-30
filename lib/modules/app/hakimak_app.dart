import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_badr/modules/app/bloc_providers.dart';
import 'package:task_badr/modules/home_layout/home_layout.dart';
import 'package:task_badr/utilis/styles/themes.dart';

class TaskApp extends StatelessWidget {
  const TaskApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocProviders,
      child: ScreenUtilInit(
        builder: (cnxt, w) => MaterialApp(
          builder: (context, widget) {
            ScreenUtil.init(
              context,
              designSize: const Size(375, 892),
              minTextAdapt: true,
              splitScreenMode: true,
            );
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,
            );
          },
          theme: lightTheme(context),
          darkTheme: darkTheme,
          themeMode: ThemeMode.light,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            EasyLocalization.of(context)!.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          home: const AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.light,
              systemStatusBarContrastEnforced: true,
            ),
            child: HomeLayout(),
          ),
        ),
      ),
    );
  }
}
