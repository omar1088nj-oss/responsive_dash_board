import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({
    super.key,
    required this.title,
    required this.hintText,
  });
  final String title, hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: AppStyles.styleMedium16),
        SizedBox(height: 12),
        CustomTextField(hintText: hintText),
      ],
    );
  }
}
