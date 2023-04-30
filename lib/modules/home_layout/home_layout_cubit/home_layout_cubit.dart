import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_badr/modules/booking_screen/booking_screen.dart';
import 'package:task_badr/modules/chat_screen/chat_screen.dart';
import 'package:task_badr/modules/home_layout/home_layout_cubit/home_layout_states.dart';
import 'package:task_badr/modules/home_screen/home_screen.dart';
import 'package:task_badr/modules/profile_screen/profile_screen.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutStates> {
  HomeLayoutCubit() : super(HomeLayoutInitialState());

  void preLoadData() {}
  int currentIndex = 0;

  List<Widget> screensBody = [
    const HomeScreen(),
    const BookingScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];
  void changeScreenBody({
    required int index,
  }) {
    currentIndex = index;

    emit(HomeLayoutChangeBottomNavBarState());
  }
}
