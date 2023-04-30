import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_badr/modules/home_layout/home_layout_cubit/home_layout_states.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutStates> {
  HomeLayoutCubit() : super(HomeLayoutInitialState());

  void preLoadData() {}
  int currentIndex = 0;

  List<Widget> screensBody = [
    // const HomeScreen(),
    // const OffersScreen(),
    // const BlogsScreen(),
    // const ProductCategoriesScreen(),
  ];
  void changeScreenBody({
    required int index,
  }) {
    currentIndex = index;

    emit(HomeLayoutChangeBottomNavBarState());
  }
}
