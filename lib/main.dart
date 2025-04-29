import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube/presentation/common/theme_bloc/theme_bloc.dart';
import 'package:youtube/presentation/home/youtube_home_screen.dart';
import 'package:youtube/theme/youtube_theme/youtube_theme.dart';

void main() {
  runApp(const YoutubeApp());
}

class YoutubeApp extends StatelessWidget {
  const YoutubeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            darkTheme: YoutubeTheme.dark(),
            theme: YoutubeTheme.light(),
            themeMode: state.themeMode,
            initialRoute: '/',
            routes: {
              '/' : (_) => const YoutubeHomeScreen(),
            },
          );
        },
      ),
    );
  }
}
