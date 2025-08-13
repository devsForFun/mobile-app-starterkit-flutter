import 'package:flutter/material.dart';
import 'package:flutter_template/utils/constants/colors.dart';

class KShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: KColors.darkGrey.withValues(alpha: 0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: KColors.darkGrey.withValues(alpha: 0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
