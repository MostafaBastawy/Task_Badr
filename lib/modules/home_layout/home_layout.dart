import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_badr/modules/home_layout/home_layout_cubit/home_layout_cubit.dart';
import 'package:task_badr/modules/home_layout/home_layout_cubit/home_layout_states.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeLayoutCubit cubit = context.read<HomeLayoutCubit>();
    return BlocBuilder<HomeLayoutCubit, HomeLayoutStates>(
      builder: (BuildContext context, state) => Scaffold(
          // extendBodyBehindAppBar: true,
          // appBar: null,
          // key: scaffoldKey,
          // drawer: const ProfileScreen(),
          // body: Stack(
          //   children: [
          //     Positioned.fill(
          //       child: cubit.screensBody[cubit.currentIndex],
          //     ),
          //     Padding(
          //       padding: EdgeInsetsDirectional.only(bottom: 29.h),
          //       child: const Align(
          //         alignment: AlignmentDirectional.bottomCenter,
          //         child: AppBottomNavigationBar(),
          //       ),
          //     ),
          //   ],
          // ),
          ),
    );
  }
}
