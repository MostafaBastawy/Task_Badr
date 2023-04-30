import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:task_badr/modules/home_layout/home_layout_cubit/home_layout_cubit.dart';
import 'package:task_badr/modules/home_layout/home_layout_cubit/home_layout_states.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeLayoutCubit cubit = context.read<HomeLayoutCubit>();
    return BlocBuilder<HomeLayoutCubit, HomeLayoutStates>(
      builder: (BuildContext context, state) => SalomonBottomBar(
        currentIndex: cubit.currentIndex,
        onTap: (index) {
          cubit.changeScreenBody(index: index);
        },
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("الرئيسية"),
            selectedColor: Colors.purple,
          ),

          /// bookings
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("الحجوزات"),
            selectedColor: Colors.pink,
          ),

          /// Chats
          SalomonBottomBarItem(
            icon: Icon(Icons.search),
            title: Text("المحادثات"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("حسابي"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
