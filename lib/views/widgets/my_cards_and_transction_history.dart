import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/views/widgets/my_cards_section.dart';
import 'package:responsive_dash_board/views/widgets/transction_history.dart';

class MyCardsAndTransctionHistory extends StatelessWidget {
  const MyCardsAndTransctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(height: 40, color: Color(0xfff1f1f1)),
          TransctionHistory(),
        ],
      ),
    );
  }
}
