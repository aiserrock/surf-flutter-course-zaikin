import 'package:flutter/material.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/text_styles.dart';
// ignore_for_file:long-method

class AppTheme {
  AppTheme();

  /// Light theme
  static ThemeData getLightTheme() {
    final theme = ThemeData.light();

    return theme.copyWith(
      brightness: Brightness.light,
      primaryColor: ColorRes.lightPrimaryColor,
      primaryColorLight: ColorRes.lightPrimaryColorLight,
      primaryColorDark: ColorRes.lightPrimaryColorLight,
      backgroundColor: ColorRes.lightScaffoldBackgroundColor,
      scaffoldBackgroundColor: ColorRes.lightScaffoldBackgroundColor,
      disabledColor: ColorRes.lightPrimaryColorLight,
      primaryTextTheme: _buildPrimaryTextThemeLight(theme.primaryTextTheme),
      textTheme: _buildTextThemeLight(theme.textTheme),
      colorScheme: theme.colorScheme.copyWith(
        background: ColorRes.lightBackgroundColor,
        secondary: ColorRes.lightSecondaryColor,
        onPrimary: ColorRes.lightOnPrimaryColor,
        primary: ColorRes.lightPrimaryColorDark,
      ),
      appBarTheme: theme.appBarTheme.copyWith(
        color: ColorRes.lightPrimaryColor,
        titleTextStyle:
            StyleRes.medium18.copyWith(color: ColorRes.lightPrimaryColorDark),
        elevation: 0,
      ),
      tabBarTheme: theme.tabBarTheme.copyWith(
        indicator: BoxDecoration(
          color: ColorRes.lightSecondaryColor,
          borderRadius: BorderRadius.circular(40),
        ),
        labelStyle: StyleRes.bold14,
        labelColor: ColorRes.lightPrimaryColor,
        unselectedLabelColor: ColorRes.lightBackgroundColor,
        unselectedLabelStyle: StyleRes.bold14,
      ),
      bottomNavigationBarTheme: theme.bottomNavigationBarTheme.copyWith(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: ColorRes.lightPrimaryColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorRes.lightPrimaryColorDark,
        unselectedItemColor: ColorRes.lightSecondaryColor,
      ),
      buttonTheme: theme.buttonTheme.copyWith(
        buttonColor: ColorRes.lightButtonColor,
        textTheme: ButtonTextTheme.primary,
        disabledColor: ColorRes.lightPrimaryColorLight,
      ),
      iconTheme: theme.iconTheme.copyWith(
        color: ColorRes.lightIconColor,
        size: 24,
      ),
      sliderTheme: theme.sliderTheme.copyWith(
        trackHeight: 2,
        thumbColor: ColorRes.lightPrimaryColor,
        activeTrackColor: ColorRes.lightAccentColor,
      ),
      floatingActionButtonTheme: theme.floatingActionButtonTheme.copyWith(
        backgroundColor: ColorRes.lightAccentColor,
        elevation: 0,
        highlightElevation: 0,
      ),
      inputDecorationTheme: theme.inputDecorationTheme.copyWith(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        errorStyle: const TextStyle(fontSize: 0),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: ColorRes.lightAccentColor.withOpacity(0.4),
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: ColorRes.colorInactiveBlack,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: ColorRes.lightErrorColor.withOpacity(0.4),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: ColorRes.lightErrorColor.withOpacity(0.4),
            width: 2,
          ),
        ),
      ),
      bottomSheetTheme: theme.bottomSheetTheme.copyWith(
        backgroundColor: Colors.transparent,
      ),
    );
  }

  /// Dart theme
  static ThemeData getDarkTheme() {
    final theme = ThemeData.dark();

    return theme.copyWith(
      brightness: Brightness.dark,
      primaryColor: ColorRes.darkPrimaryColor,
      primaryColorLight: ColorRes.darkPrimaryColorDark,
      primaryColorDark: ColorRes.darkPrimaryColorDark,
      backgroundColor: ColorRes.darkScaffoldBackgroundColor,
      scaffoldBackgroundColor: ColorRes.darkScaffoldBackgroundColor,
      disabledColor: ColorRes.darkPrimaryColorLight,
      primaryTextTheme: _buildPrimaryTextThemeDark(theme.primaryTextTheme),
      textTheme: _buildTextThemeDark(theme.textTheme),
      colorScheme: theme.colorScheme.copyWith(
        background: ColorRes.darkBackgroundColor,
        secondary: ColorRes.darkSecondaryColor,
        onPrimary: ColorRes.darkOnPrimaryColor,
        primary: ColorRes.colorWhite,
      ),
      appBarTheme: theme.appBarTheme.copyWith(
        color: ColorRes.darkPrimaryColor,
        titleTextStyle:
            StyleRes.medium18.copyWith(color: ColorRes.lightPrimaryColorDark),
        elevation: 0,
      ),
      tabBarTheme: theme.tabBarTheme.copyWith(
        indicator: BoxDecoration(
          color: ColorRes.colorWhite,
          borderRadius: BorderRadius.circular(40),
        ),
        labelStyle: StyleRes.bold14,
        labelColor: ColorRes.darkSecondaryColor,
        unselectedLabelColor: ColorRes.darkSecondaryColor2,
        unselectedLabelStyle: StyleRes.bold14,
      ),
      bottomNavigationBarTheme: theme.bottomNavigationBarTheme.copyWith(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: ColorRes.darkPrimaryColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorRes.colorWhite,
        unselectedItemColor: ColorRes.colorWhite,
      ),
      buttonTheme: theme.buttonTheme.copyWith(
        buttonColor: ColorRes.darkButtonColor,
        textTheme: ButtonTextTheme.primary,
        disabledColor: ColorRes.lightPrimaryColorLight,
      ),
      iconTheme: theme.iconTheme.copyWith(
        color: ColorRes.darkIconColor,
        size: 24,
      ),
      sliderTheme: theme.sliderTheme.copyWith(
        trackHeight: 2,
        thumbColor: ColorRes.colorWhite,
        activeTrackColor: ColorRes.darkAccentColor,
      ),
      floatingActionButtonTheme: theme.floatingActionButtonTheme.copyWith(
        backgroundColor: ColorRes.darkAccentColor,
        elevation: 0,
        highlightElevation: 0,
      ),
      inputDecorationTheme: theme.inputDecorationTheme.copyWith(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        errorStyle: const TextStyle(fontSize: 0),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: ColorRes.darkAccentColor.withOpacity(0.4),
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: ColorRes.colorInactiveBlack,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: ColorRes.darkErrorColor.withOpacity(0.4),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: ColorRes.darkErrorColor.withOpacity(0.4),
            width: 2,
          ),
        ),
      ),
      bottomSheetTheme: theme.bottomSheetTheme.copyWith(
        backgroundColor: Colors.transparent,
      ),
    );
  }

  static TextTheme _buildTextThemeLight(TextTheme textTheme) {
    return textTheme.copyWith(
      headline6:
          StyleRes.medium18.copyWith(color: ColorRes.lightPrimaryColorDark),
      headline5:
          StyleRes.medium16.copyWith(color: ColorRes.lightSecondaryColor),
      headline4: StyleRes.bold24.copyWith(color: ColorRes.lightSecondaryColor),
      headline3:
          StyleRes.bold32.copyWith(color: ColorRes.lightPrimaryColorDark),
      subtitle1: StyleRes.bold14.copyWith(color: ColorRes.lightSecondaryColor),
      subtitle2: StyleRes.bold14.copyWith(color: ColorRes.lightPrimaryColor),
      bodyText1:
          StyleRes.regular14.copyWith(color: ColorRes.lightSecondaryColor),
      bodyText2:
          StyleRes.regular14.copyWith(color: ColorRes.lightSecondaryColor2),
      caption: StyleRes.regular12.copyWith(color: ColorRes.lightSecondaryColor),
      button: StyleRes.bold14.copyWith(letterSpacing: 0.3),
    );
  }

  static TextTheme _buildPrimaryTextThemeLight(TextTheme textTheme) {
    return textTheme.copyWith(
      headline6:
          StyleRes.medium18.copyWith(color: ColorRes.lightBackgroundColor),
      subtitle1:
          StyleRes.regular16.copyWith(color: ColorRes.lightPrimaryColorDark),
      bodyText1: StyleRes.regular14.copyWith(color: ColorRes.lightAccentColor),
      bodyText2:
          StyleRes.regular14.copyWith(color: ColorRes.lightBackgroundColor),
      caption: StyleRes.medium16.copyWith(color: ColorRes.colorWhite),
    );
  }

  static TextTheme _buildTextThemeDark(TextTheme textTheme) {
    return textTheme.copyWith(
      headline6: StyleRes.medium18.copyWith(color: ColorRes.colorWhite),
      headline5: StyleRes.medium16.copyWith(color: ColorRes.colorWhite),
      headline4: StyleRes.bold24.copyWith(color: ColorRes.colorWhite),
      headline3: StyleRes.bold32.copyWith(color: ColorRes.colorWhite),
      subtitle1: StyleRes.bold14.copyWith(color: ColorRes.darkSecondaryColor2),
      subtitle2: StyleRes.bold14.copyWith(color: ColorRes.colorWhite),
      bodyText1: StyleRes.regular14.copyWith(color: ColorRes.colorWhite),
      bodyText2:
          StyleRes.regular14.copyWith(color: ColorRes.darkSecondaryColor2),
      caption: StyleRes.regular12.copyWith(color: ColorRes.colorWhite),
      button: StyleRes.bold14.copyWith(letterSpacing: 0.3),
    );
  }

  static TextTheme _buildPrimaryTextThemeDark(TextTheme textTheme) {
    return textTheme.copyWith(
      headline6:
          StyleRes.medium18.copyWith(color: ColorRes.darkBackgroundColor),
      subtitle1:
          StyleRes.regular16.copyWith(color: ColorRes.darkOnPrimaryColor),
      bodyText1: StyleRes.regular14.copyWith(color: ColorRes.darkAccentColor),
      bodyText2:
          StyleRes.regular14.copyWith(color: ColorRes.darkBackgroundColor),
      caption: StyleRes.medium12.copyWith(color: ColorRes.colorWhite),
    );
  }
}

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.white,
    required this.secondary,
    required this.secondary2,
    required this.inactiveBlack,
    required this.green,
    required this.yellow,
    required this.green2,
    required this.yellow2,
  });

  final Color? white;
  final Color? secondary;
  final Color? secondary2;
  final Color? inactiveBlack;
  final Color? green;
  final Color? yellow;
  final Color? green2;
  final Color? yellow2;

  // the light theme
  static const light = CustomColors(
    white: ColorRes.colorWhite,
    secondary: ColorRes.colorSecondary,
    secondary2: ColorRes.colorSecondary2,
    inactiveBlack: ColorRes.colorInactiveBlack,
    green: ColorRes.colorWhiteThemeGreen,
    yellow: ColorRes.colorWhiteThemeYellow,
    green2: ColorRes.colorWhiteThemeGreen2,
    yellow2: ColorRes.colorWhiteThemeYellow2,
  );

  // the dark theme
  static const dark = CustomColors(
    white: ColorRes.colorWhite,
    secondary: ColorRes.colorSecondary,
    secondary2: ColorRes.colorSecondary2,
    inactiveBlack: ColorRes.colorInactiveBlack,
    green: ColorRes.colorBlackThemeGreen,
    yellow: ColorRes.colorBlackThemeYellow,
    green2: ColorRes.colorBlackThemeGreen2,
    yellow2: ColorRes.colorBlackThemeYellow2,
  );

  @override
  CustomColors copyWith({
    Color? white,
    Color? secondary,
    Color? secondary2,
    Color? inactiveBlack,
    Color? green,
    Color? yellow,
    Color? green2,
    Color? yellow2,
  }) {
    return CustomColors(
      white: white ?? this.white,
      secondary: secondary ?? this.secondary,
      secondary2: secondary2 ?? this.secondary,
      inactiveBlack: inactiveBlack ?? this.inactiveBlack,
      green: green ?? this.green,
      yellow: yellow ?? this.yellow,
      green2: green2 ?? this.green2,
      yellow2: yellow2 ?? this.yellow2,
    );
  }

  // Controls how the properties change on theme changes
  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }

    return CustomColors(
      white: Color.lerp(white, other.white, t),
      secondary: Color.lerp(secondary, other.secondary, t),
      secondary2: Color.lerp(secondary2, other.secondary2, t),
      inactiveBlack: Color.lerp(inactiveBlack, other.inactiveBlack, t),
      green: Color.lerp(green, other.green, t),
      yellow: Color.lerp(yellow, other.yellow, t),
      green2: Color.lerp(green2, other.green2, t),
      yellow2: Color.lerp(yellow2, other.yellow2, t),
    );
  }
}
