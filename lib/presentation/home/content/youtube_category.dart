import 'package:flutter/material.dart';
import 'package:youtube/presentation/constants/categori_list.dart';
import 'package:youtube/theme/youtube_theme/youtube_color_theme.dart';
import 'package:youtube/theme/youtube_theme/youtube_padding_theme.dart';
import 'package:youtube/theme/youtube_theme/youtube_size_theme.dart';
import 'package:youtube/theme/youtube_theme/youtube_text_theme.dart';

class YoutubeCategory extends StatefulWidget {
  const YoutubeCategory({super.key});

  @override
  State<YoutubeCategory> createState() => _YoutubeCategoryState();
}

class _YoutubeCategoryState extends State<YoutubeCategory> {
  int selectedIndex = 0;

  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final youtubeColorTheme = YoutubeColorTheme.of(context);
    final youtubeTextTheme = YoutubeTextTheme.of(context);
    final youtubePaddingTheme = YoutubePaddingTheme.of(context);
    final youtubeSizeTheme = YoutubeSizeTheme.of(context);

    return Padding(
      padding: youtubePaddingTheme.categoryListPadding,
      child: SizedBox(
        height: youtubeSizeTheme.categorySectionSize,
        child: ListView.builder(
          itemCount: categoryTitleList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final isSelected = selectedIndex == index;
            final categoryTitle = categoryTitleList[index];

            return GestureDetector(
              onTap: () => onTap(index),
              child: Padding(
                padding: youtubePaddingTheme.categoryItemPadding,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: isSelected
                        ? youtubeColorTheme.categoryItemSelectedBackgroundColor
                        : youtubeColorTheme
                            .categoryItemUnselectedBackgroundColor,
                  ),
                  child: Center(
                    child: Padding(
                      padding: youtubePaddingTheme.categoryTextPadding,
                      child: Text(
                        categoryTitle,
                        style: youtubeTextTheme.title.copyWith(
                          color: isSelected
                              ? youtubeColorTheme.backgroundPrimaryColor
                              : youtubeColorTheme.foregroundPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
