import 'dart:ui';

import 'package:flutter/widgets.dart';

enum AppColors{
  primary,
  secondary,
  background,
  text,
  text2,
  button,
}

/*

    AppColors.primary: Color(0xFF4897D8),
    AppColors.secondary: Color(0xFFFFDB5C),
    AppColors.background: Color(0xFFFA6E59),
    AppColors.text: Color(0xFFF8A055),
    AppColors.text2: Color(0xFF000000),
    AppColors.button: Color(0xFF607D8B),

 */

extension QuizColorsExtended on AppColors{
  static const colors = {
    AppColors.primary: Color(0xFF66A5AD),
    AppColors.secondary: Color(0xFF07575B),
    AppColors.background: Color(0xFF003B46),
    AppColors.text: Color(0xFFC4DFE6),
    AppColors.text2: Color(0xFF000000),
    AppColors.button: Color(0xFF607D8B),
  };

  Color get color => colors[this];

}