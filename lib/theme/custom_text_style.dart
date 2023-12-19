import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Display text style
  static get displaySmall38 => theme.textTheme.displaySmall!.copyWith(
        fontSize: 38.fSize,
      );
  static get displaySmall38_1 => theme.textTheme.displaySmall!.copyWith(
        fontSize: 38.fSize,
      );
  static get displaySmall38_2 => theme.textTheme.displaySmall!.copyWith(
        fontSize: 38.fSize,
      );
  // Headline text style
  static get headlineSmallRegular => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmall_1 => theme.textTheme.headlineSmall!;
  // Source text style
  static get sourceSansProPrimary => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 100.fSize,
        fontWeight: FontWeight.w700,
      ).sourceSansPro;
  // Title style
  static get titleMedium_1 => theme.textTheme.titleMedium!;
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get sourceSansPro {
    return copyWith(
      fontFamily: 'Source Sans Pro',
    );
  }
}
