import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_badr/modules/app/app_cubit/app_states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());
  void preLoadData() {}
}
