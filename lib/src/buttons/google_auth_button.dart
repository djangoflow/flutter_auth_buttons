// Copyright 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// @dart=2.12

import 'package:auth_buttons/src/shared/auth_button.dart';
import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:auth_buttons/src/shared/auth_colors.dart';
import 'package:auth_buttons/src/shared/auth_icons.dart';
import 'package:auth_buttons/src/shared/auth_style.dart';
import 'package:flutter/material.dart';

class GoogleAuthButton extends AuthButton {
  const GoogleAuthButton({
    Key? key,
    required VoidCallback onPressed,
    String text = 'Sign in with Google',
    bool darkMode = false,
    bool rtl = false,
    VoidCallback? onLongPressed,
    bool isLoading = false,
    AuthButtonStyle? style,
  }) : super(
          key: key ?? const ValueKey<String>('GoogleAuthButton'),
          onPressed: onPressed,
          text: text,
          darkMode: darkMode,
          rtl: rtl,
          onLongPress: onLongPressed,
          isLoading: isLoading,
          style: style,
        );

  @override
  String getIconUrl() {
    if (style!.iconType == AuthIconType.outlined) return AuthIcons.google[1];
    if (style!.iconType == AuthIconType.secondary) return AuthIcons.google[2];
    return AuthIcons.google[0];
  }

  @override
  Color getButtonColor() {
    if (style!.buttonType == AuthButtonType.secondary)
      return style!.buttonColor ??
          (darkMode ? AuthColors.darkMode : Colors.blue);
    return style!.buttonColor ??
        (darkMode ? AuthColors.darkMode : Colors.white);
  }
}
