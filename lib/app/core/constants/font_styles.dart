import 'package:flutter/material.dart';

enum TextSize {
  small,
  medium,
  large,
  extraLarge,
}

enum TextWeight {
  light,
  regular,
  semiBold,
  extraBold,
}

extension TextSizeExtension on TextSize {
  double get size {
    switch (this) {
      case TextSize.small:
        return 12.0;
      case TextSize.medium:
        return 16.0;
      case TextSize.large:
        return 20.0;
      case TextSize.extraLarge:
        return 24.0;
    }
  }
}

extension TextWeightExtension on TextWeight {
  FontWeight get weight {
    switch (this) {
      case TextWeight.light:
        return FontWeight.w300;
      case TextWeight.regular:
        return FontWeight.w400;
      case TextWeight.semiBold:
        return FontWeight.w700;
      case TextWeight.extraBold:
        return FontWeight.w900;
    }
  }
}
