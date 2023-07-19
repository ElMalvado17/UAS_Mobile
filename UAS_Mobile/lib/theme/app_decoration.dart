import 'package:flutter/material.dart';
import 'package:drian_s_application3/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get fillBluegray100 => BoxDecoration(
        color: ColorConstant.blueGray100,
      );
  static BoxDecoration get fillTeal300 => BoxDecoration(
        color: ColorConstant.teal300,
      );
  static BoxDecoration get txtFillBluegray100 => BoxDecoration(
        color: ColorConstant.blueGray100,
      );
  static BoxDecoration get txtFillBlue600 => BoxDecoration(
        color: ColorConstant.blue600,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius txtCircleBorder28 = BorderRadius.circular(
    getHorizontalSize(
      28,
    ),
  );

  static BorderRadius roundedBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15,
    ),
  );

  static BorderRadius circleBorder41 = BorderRadius.circular(
    getHorizontalSize(
      41,
    ),
  );

  static BorderRadius roundedBorder54 = BorderRadius.circular(
    getHorizontalSize(
      54,
    ),
  );

  static BorderRadius txtRoundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
