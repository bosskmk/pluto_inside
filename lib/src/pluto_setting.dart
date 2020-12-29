import 'package:flutter/material.dart';

class PlutoSetting {
  /// Scroll when multi-selection is as close as that value from the edge
  static const double offsetScrollingFromEdge = 10.0;

  /// Size that scrolls from the edge at once when selecting multiple
  static const double offsetScrollingFromEdgeAtOnce = 200.0;

  /// Default Font size
  static const int fontSize = 14;

  /// Default Font weight
  static const FontWeight fontWeight = FontWeight.w600;

  /// Default Icon size
  static const int iconSize = 18;
}

class PlutoColorSet {
  static const Color containerBackgroundColor = Colors.white;

  static const Color containerBorderColor = Color(0xFFA1A5AE);

  static const Color activatedColor = Color(0xFFDCF5FF);

  static const Color activatedBorderColor = Colors.lightBlue;

  static const Color checkedColor = Color(0x11757575);

  static const Color borderColor = Color(0xFFDDE2EB);

  static const Color editingStateColor = Colors.white;

  static const Color readOnlyStateColor = Color(0xFFC4C7CC);

  static const Color headerTextColor = Colors.black;

  static const Color elementTextColor = Colors.black;

  static const Color iconColor = Colors.black26;

  static const Color menuBackgroundColor = Colors.white;
}

class PlutoDarkColorSet {
  static const Color containerBackgroundColor = Color(0xFF111111);

  static const Color containerBorderColor = Color(0xFF000000);

  static const Color activatedColor = Color(0xFF313131);

  static const Color activatedBorderColor = Color(0xFFFFFFFF);

  static const Color checkedColor = Color(0x11202020);

  static const Color borderColor = Color(0xFF000000);

  static const Color editingStateColor = Color(0xFF666666);

  static const Color readOnlyStateColor = Color(0xFF222222);

  static const Color headerTextColor = Colors.white;

  static const Color elementTextColor = Colors.white;

  static const Color iconColor = Colors.white38;

  static const Color menuBackgroundColor = Color(0xFF414141);
}