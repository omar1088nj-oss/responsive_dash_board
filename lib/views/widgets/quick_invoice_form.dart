import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_button.dart';
import 'package:responsive_dash_board/views/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hintText: 'Type customer name',
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hintText: 'Type customer email',
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),

        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'item name',
                hintText: 'Type customer name',
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: TitleTextField(title: 'item mount', hintText: 'USD'),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                backGroundColor: Colors.transparent,
                textColor: Color(0xff4DB7F2),
              ),
            ),
            const SizedBox(width: 24),
            Expanded(child: CustomButton(backGroundColor: Color(0xff4DB7F2))),
          ],
        ),
      ],
    );
  }
}
