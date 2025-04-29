import 'package:flutter/material.dart';
import 'package:youtube/presentation/home/content/youtube_category.dart';
import 'package:youtube/presentation/home/content/youtube_video_section.dart';

class YoutubeHomeContent extends StatelessWidget {
  const YoutubeHomeContent({super.key});

  @override
  Widget build(BuildContext context) {

    return const Column(
      children: [
        YoutubeCategory(),
        YoutubeVideoSection(),
      ],
    );
  }
}
