import 'package:flutter/material.dart';

class YoutubePaddingTheme extends ThemeExtension<YoutubePaddingTheme> {
  YoutubePaddingTheme()
      : appBarPadding = const EdgeInsets.all(8.0),
      categoryListPadding = const EdgeInsets.only(
          top: 6.0,
        ),
        categoryTextPadding =
            const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
        categoryItemPadding =
            const EdgeInsets.only(left: 10, top: 5, bottom: 5),
        videoContentPadding = const EdgeInsets.only(bottom: 20.0),
        videoContentTitlePadding = EdgeInsets.zero,
        videoContentDescriptionPadding = const EdgeInsets.only(top: 15.0),
        videoContentAvatarPadding = const EdgeInsets.all(12.0);

  final EdgeInsets appBarPadding;
  final EdgeInsets categoryListPadding;
  final EdgeInsets categoryTextPadding;
  final EdgeInsets categoryItemPadding;
  final EdgeInsets videoContentPadding;
  final EdgeInsets videoContentTitlePadding;
  final EdgeInsets videoContentDescriptionPadding;
  final EdgeInsets videoContentAvatarPadding;

  @override
  ThemeExtension<YoutubePaddingTheme> copyWith() {
    return this;
  }

  @override
  ThemeExtension<YoutubePaddingTheme> lerp(
      covariant ThemeExtension<YoutubePaddingTheme>? other, double t) {
    return this;
  }

  static YoutubePaddingTheme of(BuildContext context) {
    return Theme.of(context).extension<YoutubePaddingTheme>()!;
  }
}
