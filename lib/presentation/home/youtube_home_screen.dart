import 'package:flutter/material.dart';
import 'package:youtube/presentation/common/youtube_app_bar/youtube_app_bar.dart';
import 'package:youtube/presentation/common/youtube_app_bar/youtube_app_bar_actions.dart';
import 'package:youtube/presentation/common/youtube_bottom_nav_bar.dart';
import 'package:youtube/presentation/home/content/youtube_content.dart';

class YoutubeHomeScreen extends StatefulWidget {
  const YoutubeHomeScreen({super.key});

  @override
  State<YoutubeHomeScreen> createState() => _YoutubeHomeScreenState();
}

class _YoutubeHomeScreenState extends State<YoutubeHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: YoutubeAppBar(
        title: 'Youtube',
        leadingIcon: Image.asset(
          'assets/youtube.png',
          width: 40,
          height: 40,
        ),
        actions: const YoutubeAppBarActions(),
      ),
      body: const YoutubeHomeContent(),
      bottomNavigationBar: const YoutubeBottomNavBar(),
    );
  }
}
