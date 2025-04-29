import 'package:flutter/material.dart';
import 'package:youtube/theme/youtube_theme/youtube_color_pallet.dart';
import 'package:youtube/theme/youtube_theme/youtube_color_theme.dart';
import 'package:youtube/theme/youtube_theme/youtube_padding_theme.dart';
import 'package:youtube/theme/youtube_theme/youtube_size_theme.dart';
import 'package:youtube/theme/youtube_theme/youtube_text_theme.dart';

class YoutubeTheme {
  static ThemeData light() {
    final youtubeColorTheme = _lightYoutubeColorTheme();
    final youtubeTextTheme = YoutubeTextTheme(colorTheme: youtubeColorTheme);
    final youtubePaddingTheme = YoutubePaddingTheme();
    final youtubeSizeTheme = YoutubeSizeTheme();

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: youtubeColorTheme.backgroundPrimaryColor,
      appBarTheme: AppBarTheme(
        backgroundColor: youtubeColorTheme.backgroundPrimaryColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: youtubeColorTheme.backgroundPrimaryColor,
      ),
      extensions: [
        youtubeColorTheme,
        youtubeTextTheme,
        youtubePaddingTheme,
        youtubeSizeTheme,
      ],
    );
  }

  static YoutubeColorTheme _lightYoutubeColorTheme() {
    return YoutubeColorTheme(
      brightness: Brightness.light,
      primary: YoutubeColorPallet.light,
      backgroundPrimaryColor: YoutubeColorPallet.white1,
      foregroundPrimaryColor: YoutubeColorPallet.black1,
      foregroundSecondaryColor: YoutubeColorPallet.grey1,
      categoryItemUnselectedBackgroundColor: YoutubeColorPallet.grey4,
      categoryItemSelectedBackgroundColor: YoutubeColorPallet.grey2 ,
      itemSelectedColor: YoutubeColorPallet.black1,
      itemUnselectedColor: YoutubeColorPallet.grey2,
    );
  }

  static ThemeData dark() {
    final youtubeColorTheme = _darkYoutubeColorTheme();
    final youtubeTextTheme = YoutubeTextTheme(colorTheme: youtubeColorTheme);
    final youtubeSizeTheme = YoutubeSizeTheme();
    final youtubePaddingTheme = YoutubePaddingTheme();

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: youtubeColorTheme.backgroundPrimaryColor,
      appBarTheme: AppBarTheme(
        backgroundColor: youtubeColorTheme.backgroundPrimaryColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: youtubeColorTheme.backgroundPrimaryColor,
      ),
      extensions: [
        youtubeColorTheme,
        youtubeTextTheme,
        youtubePaddingTheme,
        youtubeSizeTheme,
      ],
    );
  }

  static YoutubeColorTheme _darkYoutubeColorTheme() {
    return YoutubeColorTheme(
      brightness: Brightness.dark,
      primary: YoutubeColorPallet.dark,
      backgroundPrimaryColor: YoutubeColorPallet.black1,
      foregroundPrimaryColor: YoutubeColorPallet.white1,
      foregroundSecondaryColor: YoutubeColorPallet.grey2,
      categoryItemUnselectedBackgroundColor: YoutubeColorPallet.grey2,
      categoryItemSelectedBackgroundColor: YoutubeColorPallet.white1,
      itemSelectedColor: YoutubeColorPallet.white1,
      itemUnselectedColor: YoutubeColorPallet.grey1,
    );
  }
}
