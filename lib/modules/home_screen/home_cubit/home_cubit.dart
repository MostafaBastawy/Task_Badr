import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_badr/modules/home_screen/home_cubit/home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  void preLoadData() {}
  bool accountStatus = false;
  void changeAccountStatus({
    required bool value,
  }) {
    accountStatus = value;
    emit(HomeRefreshState());
  }
}
