import 'package:flutter/material.dart';

abstract class UiCommons {
  static const int integerPrimary = 0xffab47bc;
  static const Color accentColor = Color(0xffba68c8);
  static const Color primaryColor = Color(integerPrimary);
  static const Color grayColor = Colors.grey;
  static const Color whiteColor = Colors.white;

// TextField Definitions
  static double lableFontSize() => 12;

  static OutlineInputBorder textFieldfocused() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: grayColor, width: 0.3));
  static OutlineInputBorder errorrTextFieldBorder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.red.withOpacity(0.5), width: 0.3));

// Gradients
  static LinearGradient leftToRight() => LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      tileMode: TileMode.clamp,
      colors: [primaryColor, accentColor, primaryColor]);
  static LinearGradient rightCornerToLeftCorner() => LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      tileMode: TileMode.mirror,
      colors: [accentColor, primaryColor, primaryColor]);
}
