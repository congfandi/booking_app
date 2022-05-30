import 'package:booking_app/infrastructure/theme/theme.dart';
import 'package:flutter/material.dart';

class CategoryEvent extends StatelessWidget {
  const CategoryEvent({Key? key, required this.onTap, required this.title})
      : super(key: key);
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeStyles.height30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: ColorStyles.ink04,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(width: SizeStyles.width4),
          Text(
            title,
            style: TextStyles.paragraphMedium,
          ),
          SizedBox(width: SizeStyles.width12),
          GestureDetector(
            onTap: () => onTap(),
            child: Icon(
              Icons.clear,
              color: ColorStyles.ink02,
              size: SizeStyles.width10,
            ),
          ),
          SizedBox(width: SizeStyles.width10),
        ],
      ),
    );
  }
}
