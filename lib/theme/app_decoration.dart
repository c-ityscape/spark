import 'package:flutter/material.dart';
import 'package:sparks/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo200.withOpacity(0.13),
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.13),
        border: Border.all(
          color: appTheme.black900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.black900,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderTL10 => BorderRadius.only(
        topLeft: Radius.circular(10.h),
      );
  static BorderRadius get customBorderTL20 => BorderRadius.vertical(
        top: Radius.circular(20.h),
      );
  static BorderRadius get customBorderTL201 => BorderRadius.only(
        topLeft: Radius.circular(20.h),
        bottomRight: Radius.circular(20.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
