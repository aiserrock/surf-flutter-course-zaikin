import 'package:flutter/material.dart';

/// Стили текстов
class StyleRes {
  static const TextStyle _text = TextStyle(
    fontStyle: FontStyle.normal,
    color: Colors.black,
    fontFamily: 'roboto-regular',
  );

  /// light
  static final _light = _text.copyWith(
        fontWeight: FontWeight.w300,
        fontFamily: 'roboto-light',
      ),
      light14 = _light.copyWith(fontSize: 14.0, height: 1.21);

  /// regular
  static final _regular = _text.copyWith(fontWeight: FontWeight.normal),
      regular14 = _regular.copyWith(fontSize: 14.0);

  ///medium
  static final _medium = _text.copyWith(
        fontWeight: FontWeight.w500,
        fontFamily: 'roboto-medium',
      ),
      medium16 = _medium.copyWith(fontSize: 16.0),
      medium18 = _medium.copyWith(fontSize: 18.0);

  ///bold
  static final _bold = _text.copyWith(
        fontWeight: FontWeight.bold,
        fontFamily: 'roboto-bold',
      ),
      bold14White = _bold.copyWith(fontSize: 14, color: Colors.white),
      bold24 = _bold.copyWith(fontSize: 24),
      bold32 = _bold.copyWith(fontSize: 32);

  const StyleRes._();
}
