// Copyright 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// @dart=2.12

import 'package:auth_buttons/src/shared/auth_button.dart';
import 'package:auth_buttons/src/shared/auth_colors.dart';
import 'package:auth_buttons/src/shared/auth_icons.dart';
import 'package:auth_buttons/src/shared/auth_style.dart';
import 'package:flutter/material.dart';

class HuaweiAuthButton extends AuthButton {
  HuaweiAuthButton({
    Key? key,
    required VoidCallback onPressed,
    Color? buttonColor,
    Color? splashColor,
    double? elevation,
    double? borderRadius = 8.0,
    EdgeInsets? padding,
    String text = 'Sign in with Huawei',
    TextStyle? textStyle,
    bool darkMode = false,
    Color? borderColor,
    double? borderWidth,
    AuthButtonStyleType? style,
    double? width,
    double? height,
    double? iconSize = 35.0,
    double? separator = 10.0,
    bool rtl = false,
    Color? iconBackground,
    AuthIconStyle? iconStyle,
    VoidCallback? onLongPressed,
    Color? shadowColor,
    bool isLoading = false,
    Color? progressIndicatorColor,
    Color? progressIndicatorValueColor,
    double? progressIndicatorStrokeWidth,
    double? progressIndicatorValue,
  }) : super(
          key: key ?? ValueKey('HuaweiAuthButton'),
          onPressed: onPressed,
          buttonColor: buttonColor,
          splashColor: splashColor,
          elevation: elevation,
          borderRadius: borderRadius,
          padding: padding,
          text: text,
          textStyle: textStyle,
          darkMode: darkMode,
          borderColor: borderColor,
          borderWidth: borderWidth,
          style: style,
          width: width,
          height: height,
          iconSize: iconSize,
          separator: separator,
          rtl: rtl,
          iconBackground: iconBackground,
          iconStyle: iconStyle,
          onLongPress: onLongPressed,
          shadowColor: shadowColor,
          isLoading: isLoading,
          progressIndicatorColor: progressIndicatorColor,
          progressIndicatorValueColor: progressIndicatorValueColor,
          progressIndicatorStrokeWidth: progressIndicatorStrokeWidth,
          progressIndicatorValue: progressIndicatorValue,
        );

  @override
  Color? getProgressIndicatorValueColor() {
    if (style == AuthButtonStyleType.secondary) return Colors.red;
    if (style != AuthButtonStyleType.secondary) return Colors.red[200];
  }

  @override
  String getIconUrl() {
    if (iconStyle == AuthIconStyle.outlined)
      return darkMode ? AuthIcons.huaweiWhite[1] : AuthIcons.huawei[1];
    if (iconStyle == AuthIconStyle.secondary) return AuthIcons.huawei[2];
    return (style == AuthButtonStyleType.secondary)
        ? AuthIcons.huawei[0]
        : AuthIcons.huaweiWhite[0];
  }

  @override
  Color getButtonColor() {
    if (style == AuthButtonStyleType.secondary)
      return buttonColor ??
          (darkMode ? AuthColors.darkMode : AuthColors.huawei);
    if (iconStyle == AuthIconStyle.secondary)
      return buttonColor ?? (darkMode ? AuthColors.darkMode : Colors.white);
    return buttonColor ?? (darkMode ? AuthColors.darkMode : AuthColors.huawei);
  }

  @override
  TextStyle getTextStyle() {
    if (iconStyle == AuthIconStyle.secondary &&
        style != AuthButtonStyleType.secondary)
      return TextStyle(
        color: darkMode ? Colors.white : Colors.red[800],
        fontSize: 18,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.50,
      );
    return TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.50,
    );
  }
}
