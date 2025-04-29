part of 'theme_bloc.dart';

@immutable
sealed class ThemeEvent {}

class ToggelThemeEvent extends ThemeEvent {
  ToggelThemeEvent();
}
