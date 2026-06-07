import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_row.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16), //كان 16
          AllExpensesRow(),
        ],
      ),
    );
  }
}
