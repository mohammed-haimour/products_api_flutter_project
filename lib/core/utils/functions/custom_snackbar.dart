import 'package:flutter/material.dart';
import 'package:store_app_api/core/constants/custom_colors.dart';

dynamic customSnackBar(context, {final msg, final Color color = customRed}) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(msg),
    backgroundColor: color,
    duration: const Duration(seconds: 30),
    action: SnackBarAction(
      label: 'OK',
      onPressed: () {},
    ),
  ));
}
