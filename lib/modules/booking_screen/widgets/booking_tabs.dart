import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_badr/utilis/styles/colors_manager.dart';
import 'package:task_badr/utilis/styles/shadows_manager.dart';

class BookingTabs extends StatefulWidget {
  const BookingTabs({Key? key}) : super(key: key);

  @override
  State<BookingTabs> createState() => _BookingTabsState();
}

class _BookingTabsState extends State<BookingTabs> {
  final List<String> tabs = ['طلبات', 'اليوم', 'القادمة'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 47.h,
      decoration: BoxDecoration(
        color: ColorsManager.fF6F6F6,
        borderRadius: BorderRadius.circular(5.r),
        boxShadow: ShadowsManager.shadow2,
      ),
      child: Row(
        children: List.generate(
          tabs.length,
          (index) => Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                height: 47.h,
                decoration: BoxDecoration(
                  color: selectedIndex == index
                      ? ColorsManager.f382D5E
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      tabs[index],
                      style: TextStyle(
                        color: selectedIndex == index
                            ? ColorsManager.fffffff
                            : ColorsManager.f382D5E,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
