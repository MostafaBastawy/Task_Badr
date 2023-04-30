import 'package:flutter/material.dart';
import 'package:task_badr/utilis/styles/colors_manager.dart';

class ShadowsManager {
  static final shadow1 = [
    BoxShadow(
      color: ColorsManager.f000000.withOpacity(0.25),
      offset: const Offset(0, -3),
      blurRadius: 44,
      spreadRadius: 0,
    ),
  ];
}
