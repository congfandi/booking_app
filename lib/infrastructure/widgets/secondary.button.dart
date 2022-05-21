import 'package:booking_app/infrastructure/theme/theme.dart';
import 'package:flutter/material.dart';

class SecondaryButton {
  final Color buttonColor;
  final String buttonText;
  final Function()? onPressed;

  SecondaryButton({
    this.buttonColor = ColourStyles.ink01,
    required this.buttonText,
    this.onPressed,
  });

  Widget get type1 => OutlinedButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyles.componentsSmall.copyWith(color: buttonColor),
        ),
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: buttonColor,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          padding: EdgeInsets.only(
            left: SizeStyles.width8,
            right: SizeStyles.width8,
            top: SizeStyles.width4,
            bottom: SizeStyles.width4,
          ),
        ),
      );

  Widget get type2 => OutlinedButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyles.componentsMedium.copyWith(color: buttonColor),
        ),
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: buttonColor,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          padding: EdgeInsets.only(
            left: SizeStyles.width12,
            right: SizeStyles.width12,
            top: SizeStyles.width8,
            bottom: SizeStyles.width8,
          ),
        ),
      );

  Widget get type3 => OutlinedButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyles.componentsLarge.copyWith(color: buttonColor),
        ),
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: buttonColor,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          padding: EdgeInsets.only(
            left: SizeStyles.width16,
            right: SizeStyles.width16,
            top: SizeStyles.width8,
            bottom: SizeStyles.width8,
          ),
        ),
      );
}
