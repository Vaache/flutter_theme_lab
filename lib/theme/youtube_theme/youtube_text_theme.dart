import 'package:flutter/material.dart';
import 'package:youtube/theme/youtube_theme/youtube_color_theme.dart';

class YoutubeTextTheme extends ThemeExtension<YoutubeTextTheme> {
  YoutubeTextTheme({
    required YoutubeColorTheme colorTheme,
  })  : primaryTitle = TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: colorTheme.foregroundPrimaryColor,
          letterSpacing: 0,
        ),
        title = TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: colorTheme.foregroundPrimaryColor,
          letterSpacing: 0,
        ),
        description = TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: colorTheme.foregroundPrimaryColor,
        );

  final TextStyle primaryTitle;
  final TextStyle title;
  final TextStyle description;

  @override
  ThemeExtension<YoutubeTextTheme> copyWith() {
    return this;
  }

  @override
  ThemeExtension<YoutubeTextTheme> lerp(
      covariant ThemeExtension<YoutubeTextTheme>? other, double t) {
    return this;
  }

  static YoutubeTextTheme of(BuildContext context) {
    return Theme.of(context).extension<YoutubeTextTheme>()!;
  }
}
