import 'package:flutter/material.dart';

class ColorRes {
  const ColorRes._();

  /// light colors
  static const Color lightPrimaryColor = colorWhite,
      lightPrimaryColorLight = colorBackground,
      lightPrimaryColorDark = colorWhiteThemeMain,
      lightOnPrimaryColor = colorSecondary,
      lightAccentColor = colorWhiteThemeGreen,
      lightScaffoldBackgroundColor = colorWhite,
      lightErrorColor = colorWhiteThemeError,
      lightBackgroundColor = colorInactiveBlack,
      lightSecondaryColor = colorSecondary,
      lightSecondaryColor2 = colorSecondary2,
      lightDividerColor = colorInactiveBlack,
      lightIconColor = colorWhite,
      lightButtonColor = colorWhiteThemeGreen;

  /// dark colors
  static const Color darkPrimaryColor = colorBlackThemeMain,
      darkPrimaryColorLight = colorBlackThemeMain,
      darkPrimaryColorDark = colorBlackThemeDark,
      darkOnPrimaryColor = colorWhite,
      darkAccentColor = colorBlackThemeGreen,
      darkScaffoldBackgroundColor = colorBlackThemeMain,
      darkErrorColor = colorBlackThemeError,
      darkBackgroundColor = colorInactiveBlack,
      darkSecondaryColor = colorSecondary,
      darkSecondaryColor2 = colorSecondary2,
      darkDividerColor = colorInactiveBlack,
      darkIconColor = colorWhite,
      darkButtonColor = colorBlackThemeGreen;

  /// defining color from layout (http://www.color-blindness.com/color-name-hue/)
  ///
  ///  *** Common colors
  static const Color colorWhite = Colors.white,
      colorBackground = Color(0xffF5F5F5),
      colorSecondary = Color(0xff3B3E5B),
      colorSecondary2 = Color(0xff7C7E92),
      colorInactiveBlack = Color.fromRGBO(124, 126, 146, 0.56),
      colorPicker = Color(0xFF8CC152),

      /// *** White theme colors
      colorWhiteThemeGreen = Color(0xff4CAF50), // used in gradient button
      colorWhiteThemeGreen2 = Color(0xff68B74E), // splash screen gradient
      colorWhiteThemeYellow = Color(0xffFCDD3D), // used in gradient button
      colorWhiteThemeYellow2 = Color(0xffB8CC45), // splash screen gradient
      colorWhiteThemeError = Color(0xffEF4343),
      colorWhiteThemeMain = Color(0xff252849),

      /// *** Black theme colors
      colorBlackThemeGreen = Color(0xff6ADA6F), // used in gradient button
      colorBlackThemeGreen2 = Color(0xff6CB84D), //splash screen gradient
      colorBlackThemeYellow = Color(0xffFFE769), // used in gradient button
      colorBlackThemeYellow2 = Color(0xffBBCD45), // splash screen gradient
      colorBlackThemeError = Color(0xffCF2A2A),
      colorBlackThemeDark = Color(0xff1A1A20),
      colorBlackThemeMain = Color(0xff21222C);
}
