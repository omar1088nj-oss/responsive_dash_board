import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/views/widgets/income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key, required this.isDesktop});
  final bool isDesktop;
  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(title: 'Income'),
          SizedBox(height: 16),
          isDesktop
              ? Expanded(child: IncomeSectionBody())
              : IncomeSectionBody(),
        ],
      ),
    );
  }
}
