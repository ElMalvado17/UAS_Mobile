// ignore_for_file: must_be_immutable

import 'package:drian_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll5:
        return getPadding(
          all: 5,
        );
      case ButtonPadding.PaddingAll14:
        return getPadding(
          all: 14,
        );
      case ButtonPadding.PaddingAll8:
        return getPadding(
          all: 8,
        );
      default:
        return getPadding(
          all: 11,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillCyanA400:
        return ColorConstant.cyanA400;
      case ButtonVariant.FillLightblue400:
        return ColorConstant.lightBlue400;
      case ButtonVariant.FillBluegray100:
        return ColorConstant.blueGray100;
      case ButtonVariant.FillRed300:
        return ColorConstant.red300;
      case ButtonVariant.FillCyan400:
        return ColorConstant.cyan400;
      default:
        return ColorConstant.indigo500;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.IstokWebRegular10:
        return TextStyle(
          color: ColorConstant.black90001,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Istok Web',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.IstokWebRegular17:
        return TextStyle(
          color: ColorConstant.black90001,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Istok Web',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.IstokWebRegular11:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            11,
          ),
          fontFamily: 'Istok Web',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.IstokWebRegular11Black90005:
        return TextStyle(
          color: ColorConstant.black90005,
          fontSize: getFontSize(
            11,
          ),
          fontFamily: 'Istok Web',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.IstokWebRegular15Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Istok Web',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Istok Web',
          fontWeight: FontWeight.w400,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder10,
  RoundedBorder15,
}

enum ButtonPadding {
  PaddingAll11,
  PaddingAll5,
  PaddingAll14,
  PaddingAll8,
}

enum ButtonVariant {
  FillIndigo500,
  FillCyanA400,
  FillLightblue400,
  FillBluegray100,
  FillRed300,
  FillCyan400,
}

enum ButtonFontStyle {
  IstokWebRegular15,
  IstokWebRegular10,
  IstokWebRegular17,
  IstokWebRegular11,
  IstokWebRegular11Black90005,
  IstokWebRegular15Black900,
}
