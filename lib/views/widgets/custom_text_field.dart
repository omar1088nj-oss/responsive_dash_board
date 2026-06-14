import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Color(0xfffafafa),
        filled: true,
        hintStyle: AppStyles.styleRegular16(
          context,
        ).copyWith(color: const Color(0xffaaaaaa)),
        hintText: hintText,
        border: builderBorder(),
        enabledBorder: builderBorder(),
        focusedBorder: builderBorder(),
      ),
    );
  }

  OutlineInputBorder builderBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Color(0xfffafafa)),
    );
  }
}
