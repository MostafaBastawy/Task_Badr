import 'package:flutter/material.dart';
import 'package:task_badr/utilis/styles/colors_manager.dart';

class ShadowsManager {
  static final shadow1 = [
    BoxShadow(
      color: ColorsManager.f000000.withOpacity(0.10),
      offset: const Offset(0, -3),
      blurRadius: 10,
      spreadRadius: 0,
    ),
  ];
  static final shadow2 = [
    BoxShadow(
      color: ColorsManager.f323247.withOpacity(0.2),
      offset: const Offset(0, 2),
      blurRadius: 4,
      spreadRadius: 0,
    ),
  ];
}
