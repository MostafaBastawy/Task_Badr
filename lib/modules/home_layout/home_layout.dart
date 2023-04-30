import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_badr/modules/home_layout/home_layout_cubit/home_layout_cubit.dart';
import 'package:task_badr/modules/home_layout/home_layout_cubit/home_layout_states.dart';
import 'package:task_badr/modules/home_layout/widgets/app_bottom_navigation_bar.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeLayoutCubit cubit = context.read<HomeLayoutCubit>();
    return BlocBuilder<HomeLayoutCubit, HomeLayoutStates>(
      builder: (BuildContext context, state) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: null,
        body: cubit.screensBody[cubit.currentIndex],
        bottomNavigationBar: const AppBottomNavigationBar(),
      ),
    );
  }
}
