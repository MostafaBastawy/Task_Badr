import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';
import 'package:task_badr/modules/app/app_cubit/app_cubit.dart';

final List<SingleChildWidget> blocProviders = [
  BlocProvider(
    create: (BuildContext context) => AppCubit(),
  ),
];
