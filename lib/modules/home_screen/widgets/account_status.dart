import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:task_badr/modules/home_screen/home_cubit/home_cubit.dart';
import 'package:task_badr/modules/home_screen/home_cubit/home_states.dart';
import 'package:task_badr/utilis/styles/colors_manager.dart';
import 'package:task_badr/utilis/styles/shadows_manager.dart';

class AccountStatus extends StatelessWidget {
  const AccountStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      width: 366.w,
      height: 77.h,
      decoration: BoxDecoration(
        color: ColorsManager.fF5F5F5,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/home_screen/profile.png',
            width: 43.w,
            height: 45.h,
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'حالة الحساب',
                  style: TextStyle(
                    color: ColorsManager.f151522,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'نشطة الآن',
                  style: TextStyle(
                    color: ColorsManager.f666666,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 10.w),
          BlocBuilder<HomeCubit, HomeStates>(
            builder: (context, state) {
              return Container(
                width: 50.w,
                height: 30.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: ShadowsManager.shadow1,
                ),
                child: FlutterSwitch(
                  width: 50.w,
                  height: 30.h,
                  toggleSize: 15,
                  activeColor: ColorsManager.fffffff,
                  inactiveColor: ColorsManager.fffffff,
                  activeToggleColor: ColorsManager.f907DD2,
                  toggleColor: ColorsManager.f907DD2,
                  value: context.read<HomeCubit>().accountStatus,
                  onToggle: (bool value) {
                    BlocProvider.of<HomeCubit>(context)
                        .changeAccountStatus(value: value);
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}