import 'package:flutter/material.dart';
import 'package:youtube/theme/youtube_theme/youtube_color_theme.dart';

class YoutubeAppBarActions extends StatelessWidget {
  const YoutubeAppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    final youtubeColorTheme = YoutubeColorTheme.of(context);

    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.cast_sharp),
          style: ButtonStyle(
            iconColor: WidgetStateProperty.all(
              youtubeColorTheme.foregroundPrimaryColor,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none),
          style: ButtonStyle(
            iconColor: WidgetStateProperty.all(
              youtubeColorTheme.foregroundPrimaryColor,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
          style: ButtonStyle(
            iconColor: WidgetStateProperty.all(
              youtubeColorTheme.foregroundPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
