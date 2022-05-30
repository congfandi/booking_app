import 'package:booking_app/infrastructure/theme/theme.dart';
import 'package:flutter/material.dart';

class PrimaryButton {
  final Color buttonColor;
  final String buttonText;
  final Function()? onPressed;

  PrimaryButton(
      {this.buttonColor = ColorStyles.ink01,
      required this.buttonText,
      this.onPressed});

  Widget get type1 => ElevatedButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyles.componentsSmall.copyWith(
              color:
                  onPressed == null ? ColorStyles.ink02 : ColorStyles.ink06),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              onPressed == null ? ColorStyles.ink04 : buttonColor),
          padding: MaterialStateProperty.all(
            EdgeInsets.only(
              right: SizeStyles.width8,
              left: SizeStyles.width8,
              top: SizeStyles.height4,
              bottom: SizeStyles.height4,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(SizeStyles.width4),
            ),
          ),
        ),
      );

  Widget get type2 => ElevatedButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyles.componentsMedium.copyWith(
              color:
                  onPressed == null ? ColorStyles.ink02 : ColorStyles.ink06),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              onPressed == null ? ColorStyles.ink04 : buttonColor),
          padding: MaterialStateProperty.all(
            EdgeInsets.only(
              right: SizeStyles.width12,
              left: SizeStyles.width12,
              top: SizeStyles.height8,
              bottom: SizeStyles.height8,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(SizeStyles.width4),
            ),
          ),
        ),
      );

  Widget get type3 => ElevatedButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyles.componentsLarge.copyWith(
              color:
                  onPressed == null ? ColorStyles.ink02 : ColorStyles.ink06),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              onPressed == null ? ColorStyles.ink04 : buttonColor),
          padding: MaterialStateProperty.all(
            EdgeInsets.only(
              right: SizeStyles.width16,
              left: SizeStyles.width16,
              top: SizeStyles.height8,
              bottom: SizeStyles.height8,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(SizeStyles.width4),
            ),
          ),
        ),
      );
}
