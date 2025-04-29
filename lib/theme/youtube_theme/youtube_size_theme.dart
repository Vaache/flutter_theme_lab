import 'package:flutter/material.dart';

class YoutubeSizeTheme extends ThemeExtension<YoutubeSizeTheme> {
  YoutubeSizeTheme()
      : avatarSize = 24,
        textWidth = 280,
        categorySectionSize = 40,
        descriptionSectionSize = 40;

  final double avatarSize;
  final double textWidth;
  final double descriptionSectionSize;
  final double categorySectionSize;

  @override
  ThemeExtension<YoutubeSizeTheme> copyWith() {
    return this;
  }

  @override
  ThemeExtension<YoutubeSizeTheme> lerp(
      covariant ThemeExtension<YoutubeSizeTheme>? other, double t) {
    return this;
  }

  static YoutubeSizeTheme of(BuildContext context) {
    return Theme.of(context).extension<YoutubeSizeTheme>()!;
  }
}
