import 'package:flutter/material.dart';
import 'package:flutter_project_boilerplate/res/colors/app_color.dart';

Widget circleAvatar({
  double radius = 20.0,
  ImageProvider<Object>? backgroundImage,
  Color bgColor = AppColor.iconTextColor,
  Widget? child,
}) =>
    CircleAvatar(
      radius: radius,
      backgroundImage: backgroundImage,
      backgroundColor: bgColor,
      child: child,
    );
