import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';
import 'package:task_badr/modules/app/app_cubit/app_cubit.dart';
import 'package:task_badr/modules/booking_screen/booking_cubit/booking_cubit.dart';
import 'package:task_badr/modules/home_layout/home_layout_cubit/home_layout_cubit.dart';
import 'package:task_badr/modules/home_screen/home_cubit/home_cubit.dart';

final List<SingleChildWidget> blocProviders = [
  BlocProvider(
    create: (BuildContext context) => AppCubit(),
  ),
  BlocProvider(
    create: (BuildContext context) => HomeLayoutCubit(),
  ),
  BlocProvider(
    create: (BuildContext context) => HomeCubit(),
  ),
  BlocProvider(
    create: (BuildContext context) => BookingCubit(),
  ),
];
