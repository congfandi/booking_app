import 'package:booking_app/infrastructure/theme/theme.dart';
import 'package:flutter/material.dart';

class AppInput extends StatelessWidget {
  const AppInput({Key? key, required this.label, this.controller,this.suffix})
      : super(key: key);
  final String label;
  final TextEditingController? controller;
  final Widget? suffix;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeStyles.height40,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(SizeStyles.width4),
            borderSide: BorderSide(
              color: ColourStyles.ink03,
              width: SizeStyles.width2,
            ),
          ),
          labelText: label,
          suffixIcon: suffix
        ),
        style: TextStyles.componentsMedium,
      ),
    );
  }
}
