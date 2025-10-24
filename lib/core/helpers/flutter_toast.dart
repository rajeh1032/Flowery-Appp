import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flower_e_commerce_app/core/utils/Constantts/sizes.dart';

abstract class ToastMessage {
  static Future<bool?> toastMsg(
    BuildContext context,
    String msg, {
    Color? backgroundColor,
    Color? textColor,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: backgroundColor ?? colorScheme.primary,
      textColor: textColor ?? colorScheme.onPrimary,
      fontSize: AppSizes.sizedBoxHeight_20,
    );
  }
}
