import 'dart:ui';

import 'package:flutter/material.dart';

class ColorRes {
  static const Color cardBackground = _cardBackground,
      secondaryText = _secondaryText;

  const ColorRes._();
}

/// Основная палитра для places (http://www.color-blindness.com/color-name-hue/)
const Color _cardBackground = Color.fromRGBO(245, 245, 245, 1),
    _secondaryText = Color.fromRGBO(124, 126, 146, 1);
