import 'package:flutter/material.dart';
import 'package:youtube/theme/youtube_theme/youtube_color_theme.dart';
import 'package:youtube/theme/youtube_theme/youtube_padding_theme.dart';
import 'package:youtube/theme/youtube_theme/youtube_size_theme.dart';
import 'package:youtube/theme/youtube_theme/youtube_text_theme.dart';

class YoutubeVideoDescriptionSection extends StatelessWidget {
  const YoutubeVideoDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = YoutubeSizeTheme.of(context);
    final youtubeTextTheme = YoutubeTextTheme.of(context);
    final youtubePaddingTheme = YoutubePaddingTheme.of(context);

    return Row(
      children: [
        Padding(
          padding: youtubePaddingTheme.videoContentDescriptionPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.textWidth,
                child: Text(
                  'Efficient Folder Structures for Large Flutter Apps | Feature-First vs. Module-First Approach by Coding With T 108,963 views 1 year ago 15 minutes',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: youtubeTextTheme.title,
                ),
              ),
              Text(
                'Coding With T 108K 1 Year',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: youtubeTextTheme.description,
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_vert,
            color: YoutubeColorTheme.of(context).foregroundPrimaryColor,
          ),
        )
      ],
    );
  }
}
