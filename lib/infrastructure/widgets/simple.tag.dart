import 'package:booking_app/infrastructure/theme/theme.dart';
import 'package:flutter/material.dart';

class SimpleTag extends StatelessWidget {
  const SimpleTag(
      {Key? key,
      required this.title,
      this.buttonColor = ColorStyles.ink01,
      this.titleColor = ColorStyles.ink06,
      this.onTap})
      : super(key: key);
  final String title;
  final Color buttonColor;
  final Color titleColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeStyles.height32,
      padding: EdgeInsets.only(
        left: SizeStyles.width16,
        bottom: SizeStyles.height8,
        top: SizeStyles.height8,
        right: SizeStyles.width16,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: buttonColor),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyles.paragraphSmallBold.copyWith(color: titleColor),
          ),
          SizedBox(width: SizeStyles.width8),
          GestureDetector(
            onTap: onTap,
            child: Icon(
              Icons.clear,
              color: titleColor,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
