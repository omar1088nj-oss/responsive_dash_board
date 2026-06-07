import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_image.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';

class AllExpensesRow extends StatefulWidget {
  const AllExpensesRow({super.key});
  static const items = [
    AllExpensesItemModel(
      image: Assets.imagesBalance2,
      title: 'Balacne',
      date: 'April 2022',
      price: '\$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: '\$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: '\$20,129',
    ),
  ];

  @override
  State<AllExpensesRow> createState() => _AllExpensesRowState();
}

class _AllExpensesRowState extends State<AllExpensesRow> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items
      //     .map((e) => Expanded(child: AllExpensesItem(itemModel: e)))
      //     .toList(),
      children: AllExpensesRow.items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: Padding(
            padding: index == 1
                ? EdgeInsets.symmetric(horizontal: 12)
                : EdgeInsets.symmetric(horizontal: 0),
            child: InkWell(
              onTap: () {
                selectedIndex = index;
                setState(() {});
              },
              child: AllExpensesItem(
                itemModel: item,
                isSelected: selectedIndex == index,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
