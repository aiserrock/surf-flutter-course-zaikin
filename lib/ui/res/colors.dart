import 'dart:ui';

import 'package:flutter/material.dart';

class ColorRes {
  const ColorRes._();

  static const Color cardBackground = _cardBackground,
      tabBackground = _tabBackground,
      planedText = _planedText,
      secondaryText = _secondaryText;
}

/// Основная палитра для places (http://www.color-blindness.com/color-name-hue/)
const Color _cardBackground = Color.fromRGBO(245, 245, 245, 1),
    _tabBackground = Color(0x00f5f5f5),
    _planedText = Color.fromRGBO(76, 175, 80, 1),
    _secondaryText = Color.fromRGBO(124, 126, 146, 1);
