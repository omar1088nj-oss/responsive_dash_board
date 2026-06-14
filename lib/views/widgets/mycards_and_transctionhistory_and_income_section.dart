import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/income_section.dart';
import 'package:responsive_dash_board/views/widgets/my_cards_and_transction_history.dart';

class MyCardsAndTransctionHistoryAndInComeSection extends StatelessWidget {
  const MyCardsAndTransctionHistoryAndInComeSection({
    super.key,
    required this.isdesktop,
  });
  final bool isdesktop;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        MyCardsAndTransctionHistory(),
        SizedBox(height: 24),
        isdesktop
            ? Expanded(child: IncomeSection(isDesktop: true))
            : IncomeSection(isDesktop: false),
      ],
    );
  }
}
