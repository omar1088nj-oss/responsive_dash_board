import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses.dart';
import 'package:responsive_dash_board/views/widgets/mycards_and_transctionhistory_and_income_section.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpenses(),
          SizedBox(height: 24),
          QuickInvoice(),
          MyCardsAndTransctionHistoryAndInComeSection(isdesktop: false),
        ],
      ),
    );
  }
}
