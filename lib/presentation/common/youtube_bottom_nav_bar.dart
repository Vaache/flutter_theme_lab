import 'package:flutter/material.dart';
import 'package:youtube/theme/youtube_theme/youtube_color_theme.dart';

class YoutubeBottomNavBar extends StatefulWidget {
  const YoutubeBottomNavBar({
    super.key,
  });

  @override
  State<YoutubeBottomNavBar> createState() => _YoutubeBottomNavBarState();
}

class _YoutubeBottomNavBarState extends State<YoutubeBottomNavBar> {
  int _selectedItemIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final youtubeColorTheme = YoutubeColorTheme.of(context);

    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(_selectedItemIndex == 0 ? Icons.home : Icons.home_outlined,
              color: youtubeColorTheme.foregroundPrimaryColor),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            _selectedItemIndex == 1
                ? Icons.subscriptions
                : Icons.subscriptions_outlined,
            color: youtubeColorTheme.foregroundPrimaryColor,
          ),
          label: 'Subscriptions',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 15,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/curren_user_avatar.jpg',
              ),
            ),
          ),
          label: 'You',
        ),
      ],
      currentIndex: _selectedItemIndex,
      selectedItemColor: youtubeColorTheme.foregroundPrimaryColor,
      unselectedItemColor: youtubeColorTheme.foregroundPrimaryColor,
      onTap: onItemTapped,
    );
  }
}
