import 'package:flutter/material.dart';
import 'package:youtube/presentation/home/content/youtube_video_description_section.dart';
import 'package:youtube/theme/youtube_theme/youtube_padding_theme.dart';
import 'package:youtube/theme/youtube_theme/youtube_size_theme.dart';

class YoutubeVideoSection extends StatelessWidget {
  const YoutubeVideoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = YoutubeSizeTheme.of(context);
    final youtubePaddingTheme = YoutubePaddingTheme.of(context);

    return Expanded(
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: youtubePaddingTheme.videoContentDescriptionPadding,
              child: Column(
                children: [
                  Image.asset('assets/image${index + 1}.jpg'),
                  Row(
                    children: [
                      Padding(
                        padding: youtubePaddingTheme.videoContentAvatarPadding,
                        child: CircleAvatar(
                          radius: size.avatarSize,
                          backgroundImage:
                              AssetImage('assets/image${index + 1}.jpg'),
                        ),
                      ),
                      const YoutubeVideoDescriptionSection(),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
