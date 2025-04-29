import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube/presentation/common/theme_bloc/theme_bloc.dart';
import 'package:youtube/theme/youtube_theme/youtube_padding_theme.dart';
import 'package:youtube/theme/youtube_theme/youtube_text_theme.dart';

class YoutubeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const YoutubeAppBar(
      {super.key,
      required this.leadingIcon,
      required this.title,
      required this.actions});

  final Widget leadingIcon;
  final String title;
  final Widget actions;

  @override
  Widget build(BuildContext context) {
    final textTheme = YoutubeTextTheme.of(context);
    final paddingTheme = YoutubePaddingTheme.of(context);

    return SafeArea(
      child: Padding(
        padding: paddingTheme.appBarPadding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  child: leadingIcon,
                  onTap: () =>
                      context.read<ThemeBloc>().add(ToggelThemeEvent()),
                ),
                Text(
                  title,
                  style: textTheme.primaryTitle,
                ),
              ],
            ),
            actions,
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
