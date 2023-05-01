import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_badr/utilis/styles/colors_manager.dart';

class AppButton extends StatelessWidget {
  final double width;
  final double height;
  final Function onTap;
  final Color? color;
  final String? label;
  final FontWeight? labelWeight;
  const AppButton({
    Key? key,
    required this.width,
    required this.height,
    required this.onTap,
    this.color,
    required this.label,
    this.labelWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: ColorsManager.f615198,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(0),
          enableFeedback: true,
          animationDuration: const Duration(seconds: 2),
          foregroundColor: ColorsManager.fBDBDBD,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label!,
              style: TextStyle(
                fontWeight: labelWeight ?? FontWeight.w400,
                fontSize: 14.sp,
                color: ColorsManager.fffffff,
              ),
            ),
          ],
        ),
        onPressed: () => onTap(),
      ),
    );
  }
}
