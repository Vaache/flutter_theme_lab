import 'package:flutter/material.dart';

class YoutubeColorTheme implements ThemeExtension<YoutubeColorTheme> {
  YoutubeColorTheme({
    required this.brightness,
    required this.primary,
    required this.backgroundPrimaryColor,
    required this.foregroundPrimaryColor,
    required this.foregroundSecondaryColor,
    required this.categoryItemUnselectedBackgroundColor,
    required this.categoryItemSelectedBackgroundColor,
    required this.itemSelectedColor,
    required this.itemUnselectedColor,
  });

  final Brightness brightness;
  final Color primary;
  final Color backgroundPrimaryColor;
  final Color foregroundPrimaryColor;
  final Color foregroundSecondaryColor;
  final Color categoryItemUnselectedBackgroundColor;
  final Color categoryItemSelectedBackgroundColor;
  final Color itemSelectedColor;
  final Color itemUnselectedColor;

  @override
  ThemeExtension<YoutubeColorTheme> copyWith({
    Color? primary,
    Color? backgroundPrimaryColor,
    Color? foregroundPrimaryColor,
    Color? foregroundSecondaryColor,
    Color? categoryItemUnselectedBackgroundColor,
    Color? categoryItemSelectedBackgroundColor,
    Color? itemSelectedColor,
    Color? itemUnselectedColor,
  }) {
    return YoutubeColorTheme(
      brightness: brightness,
      primary: primary ?? this.primary,
      backgroundPrimaryColor:
          backgroundPrimaryColor ?? this.backgroundPrimaryColor,
      foregroundPrimaryColor:
          foregroundPrimaryColor ?? this.foregroundPrimaryColor,
      foregroundSecondaryColor:
          foregroundSecondaryColor ?? this.foregroundSecondaryColor,
      categoryItemUnselectedBackgroundColor:
          categoryItemUnselectedBackgroundColor ??
              this.categoryItemUnselectedBackgroundColor,
      categoryItemSelectedBackgroundColor:
          categoryItemSelectedBackgroundColor ??
              this.categoryItemSelectedBackgroundColor,
      itemSelectedColor: itemSelectedColor ?? this.itemSelectedColor,
      itemUnselectedColor: itemUnselectedColor ?? this.itemUnselectedColor,
    );
  }

  @override
  ThemeExtension<YoutubeColorTheme> lerp(
      covariant ThemeExtension<YoutubeColorTheme>? other, double t) {
    if (other is! YoutubeColorTheme) {
      return this;
    }

    return YoutubeColorTheme(
      brightness: t < 0.5 ? brightness : other.brightness,
      primary: Color.lerp(primary, other.primary, t)!,
      backgroundPrimaryColor:
          Color.lerp(backgroundPrimaryColor, other.backgroundPrimaryColor, t)!,
      foregroundPrimaryColor:
          Color.lerp(foregroundPrimaryColor, other.foregroundPrimaryColor, t)!,
      foregroundSecondaryColor: Color.lerp(
          foregroundSecondaryColor, other.foregroundSecondaryColor, t)!,
      categoryItemUnselectedBackgroundColor: Color.lerp(
          categoryItemUnselectedBackgroundColor,
          other.categoryItemUnselectedBackgroundColor,
          t)!,
      categoryItemSelectedBackgroundColor: Color.lerp(
          categoryItemSelectedBackgroundColor,
          other.categoryItemSelectedBackgroundColor,
          t)!,
      itemSelectedColor:
          Color.lerp(itemSelectedColor, other.itemSelectedColor, t)!,
      itemUnselectedColor:
          Color.lerp(itemUnselectedColor, other.itemUnselectedColor, t)!,
    );
  }

  @override
  Object get type => YoutubeColorTheme;

  static YoutubeColorTheme of(BuildContext context) {
    return Theme.of(context).extension<YoutubeColorTheme>()!;
  }
}
