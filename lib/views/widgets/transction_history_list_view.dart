import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transction_model.dart';
import 'package:responsive_dash_board/views/widgets/transction_item.dart';

class TransctionHistoryListView extends StatelessWidget {
  const TransctionHistoryListView({super.key});
  static const items = [
    TransctionModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022',
      amount: '\$20,129',
      isWidthDrawal: true,
    ),
    TransctionModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: '\$2,000',
      isWidthDrawal: false,
    ),
    TransctionModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: '\$20,129',
      isWidthDrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransctionItem(transctionModel: e)).toList(),
    );
    // ListView.builder(
    //   itemCount: items.length,
    //   //  shrinkWrap: true,
    //   itemBuilder: (context, index) {
    //     return TransctionItem(transctionModel: items[index]);
    //   },
    // );
  }
}
