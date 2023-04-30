import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:task_badr/modules/home_layout/home_layout_cubit/home_layout_cubit.dart';
import 'package:task_badr/modules/home_layout/home_layout_cubit/home_layout_states.dart';
import 'package:task_badr/utilis/styles/colors_manager.dart';
import 'package:task_badr/utilis/styles/shadows_manager.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeLayoutCubit cubit = context.read<HomeLayoutCubit>();
    return BlocBuilder<HomeLayoutCubit, HomeLayoutStates>(
      builder: (BuildContext context, state) => Container(
        width: 375.w,
        height: 85.h,
        decoration: BoxDecoration(
          color: ColorsManager.fffffff,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.r),
            topLeft: Radius.circular(30.r),
          ),
          boxShadow: ShadowsManager.shadow1,
        ),
        child: SalomonBottomBar(
          currentIndex: cubit.currentIndex,
          backgroundColor: Colors.transparent,
          unselectedItemColor: ColorsManager.f999999,
          selectedItemColor: ColorsManager.f615198,
          onTap: (index) {
            cubit.changeScreenBody(index: index);
          },
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: SvgPicture.asset(
                'assets/images/bottom_nav_bar/home.svg',
                colorFilter: ColorFilter.mode(
                  cubit.currentIndex == 0
                      ? ColorsManager.f615198
                      : ColorsManager.f999999,
                  BlendMode.srcIn,
                ),
              ),
              title: Text(
                "الرئيسية",
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              selectedColor: ColorsManager.f615198,
            ),

            /// bookings
            SalomonBottomBarItem(
              icon: SvgPicture.asset(
                'assets/images/bottom_nav_bar/calendar.svg',
                colorFilter: ColorFilter.mode(
                  cubit.currentIndex == 1
                      ? ColorsManager.f615198
                      : ColorsManager.f999999,
                  BlendMode.srcIn,
                ),
              ),
              title: Text(
                "الحجوزات",
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              selectedColor: ColorsManager.f615198,
            ),

            /// Chats
            SalomonBottomBarItem(
              icon: SvgPicture.asset(
                'assets/images/bottom_nav_bar/chat.svg',
                colorFilter: ColorFilter.mode(
                  cubit.currentIndex == 2
                      ? ColorsManager.f615198
                      : ColorsManager.f999999,
                  BlendMode.srcIn,
                ),
              ),
              title: Text(
                "المحادثات",
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              selectedColor: ColorsManager.f615198,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: SvgPicture.asset(
                'assets/images/bottom_nav_bar/profile.svg',
                colorFilter: ColorFilter.mode(
                  cubit.currentIndex == 3
                      ? ColorsManager.f615198
                      : ColorsManager.f999999,
                  BlendMode.srcIn,
                ),
              ),
              title: Text(
                "حسابي",
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              selectedColor: ColorsManager.f615198,
            ),
          ],
        ),
      ),
    );
  }
}
