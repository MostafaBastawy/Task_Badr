import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_badr/utilis/styles/colors_manager.dart';

class AddNewService extends StatelessWidget {
  const AddNewService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'خدماتنا',
          style: TextStyle(
            color: ColorsManager.f151522,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(width: 127.w),
        Container(
          width: 32.w,
          height: 32.h,
          decoration: const BoxDecoration(
            color: ColorsManager.f503D9C,
            shape: BoxShape.circle,
          ),
          child: const Center(
            child: Icon(
              Icons.add,
              size: 15,
              color: ColorsManager.fffffff,
            ),
          ),
        ),
        SizedBox(width: 7.w),
        Text(
          'إضافة خدمة جديدة',
          style: TextStyle(
            color: ColorsManager.f555556,
            fontSize: 12.sp,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
