import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_badr/utilis/styles/colors_manager.dart';

class ServiceItem extends StatelessWidget {
  const ServiceItem({
    Key? key,
    required this.image,
    required this.label,
  }) : super(key: key);
  final String image;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      width: 160.w,
      height: 54.h,
      decoration: BoxDecoration(
        color: ColorsManager.fDFDCEA,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 38.w,
            height: 38.h,
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              label,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                color: ColorsManager.f000000,
                fontSize: 14.sp,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
