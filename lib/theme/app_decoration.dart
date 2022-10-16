import 'package:flutter/material.dart';
import 'package:tarea1_danielcastro/utils/color_constant.dart';
import 'package:tarea1_danielcastro/utils/size_utils.dart';

class AppDecoration {
  static BoxDecoration get fillGreenA400 => BoxDecoration(
        color: ColorConstant.greenA400,
      );
  static BoxDecoration get fillLightblue50 => BoxDecoration(
        color: ColorConstant.lightBlue50,
      );
  static BoxDecoration get txtFillGreenA400 => BoxDecoration(
        color: ColorConstant.greenA400,
      );
  static BoxDecoration get fillBluegray100 => BoxDecoration(
        color: ColorConstant.bluegray100,
      );
  static BoxDecoration get txtOutlineBlack9003f => BoxDecoration();
  static BoxDecoration get gradientLightblue600TealA400 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.09302324842029674,
            0.10065466420534681,
          ),
          end: Alignment(
            0.9000000060653292,
            0.747954180592294,
          ),
          colors: [
            ColorConstant.lightBlue600,
            ColorConstant.tealA400,
          ],
        ),
      );
  static BoxDecoration get outline => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.24444439069902846,
            0.1629629964209889,
          ),
          end: Alignment(
            0.9999999742206982,
            0.9157608313804844,
          ),
          colors: [
            ColorConstant.bluegray100,
            ColorConstant.bluegray100Aa,
            ColorConstant.green40000,
          ],
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder26 = BorderRadius.circular(
    getHorizontalSize(
      26.50,
    ),
  );

  static BorderRadius roundedBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15.00,
    ),
  );

  static BorderRadius roundedBorder11 = BorderRadius.circular(
    getHorizontalSize(
      11.50,
    ),
  );

  static BorderRadius roundedBorder22 = BorderRadius.circular(
    getHorizontalSize(
      22.50,
    ),
  );

  static BorderRadius txtRoundedBorder11 = BorderRadius.circular(
    getHorizontalSize(
      11.50,
    ),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20.00,
    ),
  );
}
