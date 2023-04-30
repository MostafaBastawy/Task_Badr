// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:hakimak_user/cubits/home_layout_cubit/home_layout_cubit.dart';
// import 'package:hakimak_user/cubits/home_layout_cubit/home_layout_states.dart';
// import 'package:hakimak_user/utilis/styles/colors_manager.dart';
// import 'package:hakimak_user/utilis/styles/shadows_manager.dart';
//
// class AppBottomNavigationBar extends StatelessWidget {
//   const AppBottomNavigationBar({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     HomeLayoutCubit cubit = context.read<HomeLayoutCubit>();
//     return BlocBuilder<HomeLayoutCubit, HomeLayoutStates>(
//       builder: (BuildContext context, state) => Container(
//         width: 390.w,
//         height: 68.h,
//         decoration: BoxDecoration(
//           color: ColorsManager.fffffff,
//           borderRadius: BorderRadius.circular(50.r),
//           boxShadow: ShadowsManager.shadow2,
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             InkWell(
//               onTap: () {
//                 cubit.changeScreenBody(index: 0);
//               },
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   SvgPicture.asset(
//                     'assets/images/bottom_nav_bar/home.svg',
//                     width: 23.68.w,
//                     height: 26.31.h,
//                     colorFilter: ColorFilter.mode(
//                       cubit.currentIndex == 0
//                           ? ColorsManager.f16C4BB
//                           : ColorsManager.fBEBEBE,
//                       BlendMode.srcIn,
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsetsDirectional.only(top: 5.h, bottom: 9.h),
//                     child: Container(
//                       width: 6,
//                       height: 6,
//                       decoration: BoxDecoration(
//                         color: cubit.currentIndex == 0
//                             ? ColorsManager.f16C4BB
//                             : ColorsManager.fffffff,
//                         shape: BoxShape.circle,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             InkWell(
//               onTap: () {
//                 cubit.changeScreenBody(index: 1);
//               },
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   SvgPicture.asset(
//                     'assets/images/bottom_nav_bar/offers.svg',
//                     width: 28.64.w,
//                     height: 28.64.h,
//                     colorFilter: ColorFilter.mode(
//                       cubit.currentIndex == 1
//                           ? ColorsManager.f16C4BB
//                           : ColorsManager.fBEBEBE,
//                       BlendMode.srcIn,
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsetsDirectional.only(top: 5.h, bottom: 9.h),
//                     child: Container(
//                       width: 6,
//                       height: 6,
//                       decoration: BoxDecoration(
//                         color: cubit.currentIndex == 1
//                             ? ColorsManager.f16C4BB
//                             : ColorsManager.fffffff,
//                         shape: BoxShape.circle,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             InkWell(
//               onTap: () {
//                 cubit.changeScreenBody(index: 2);
//               },
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   SvgPicture.asset(
//                     'assets/images/bottom_nav_bar/blogs.svg',
//                     width: 26.7.w,
//                     height: 26.71.h,
//                     colorFilter: ColorFilter.mode(
//                       cubit.currentIndex == 2
//                           ? ColorsManager.f16C4BB
//                           : ColorsManager.fBEBEBE,
//                       BlendMode.srcIn,
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsetsDirectional.only(top: 5.h, bottom: 9.h),
//                     child: Container(
//                       width: 6,
//                       height: 6,
//                       decoration: BoxDecoration(
//                         color: cubit.currentIndex == 2
//                             ? ColorsManager.f16C4BB
//                             : ColorsManager.fffffff,
//                         shape: BoxShape.circle,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             InkWell(
//               onTap: () {
//                 cubit.changeScreenBody(index: 3);
//               },
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   SvgPicture.asset(
//                     'assets/images/bottom_nav_bar/products.svg',
//                     width: 23.71.w,
//                     height: 26.34.h,
//                     colorFilter: ColorFilter.mode(
//                       cubit.currentIndex == 3
//                           ? ColorsManager.f16C4BB
//                           : ColorsManager.fBEBEBE,
//                       BlendMode.srcIn,
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsetsDirectional.only(top: 5.h, bottom: 9.h),
//                     child: Container(
//                       width: 6,
//                       height: 6,
//                       decoration: BoxDecoration(
//                         color: cubit.currentIndex == 3
//                             ? ColorsManager.f16C4BB
//                             : ColorsManager.fffffff,
//                         shape: BoxShape.circle,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             InkWell(
//               onTap: () {
//                 cubit.changeScreenBody(index: 4);
//               },
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   SvgPicture.asset(
//                     'assets/images/bottom_nav_bar/profile.svg',
//                     width: 32.w,
//                     height: 32.h,
//                     colorFilter: ColorFilter.mode(
//                       cubit.currentIndex == 4
//                           ? ColorsManager.f16C4BB
//                           : ColorsManager.fBEBEBE,
//                       BlendMode.srcIn,
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsetsDirectional.only(top: 5.h, bottom: 9.h),
//                     child: Container(
//                       width: 6,
//                       height: 6,
//                       decoration: BoxDecoration(
//                         color: cubit.currentIndex == 4
//                             ? ColorsManager.f16C4BB
//                             : ColorsManager.fffffff,
//                         shape: BoxShape.circle,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
