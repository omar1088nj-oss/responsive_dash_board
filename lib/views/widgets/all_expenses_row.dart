import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_image.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';

class AllExpensesRow extends StatefulWidget {
  const AllExpensesRow({super.key});

  @override
  State<AllExpensesRow> createState() => _AllExpensesRowState();
}

class _AllExpensesRowState extends State<AllExpensesRow> {
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

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              selectedIndex = 0;
              setState(() {});
            },
            child: AllExpensesItem(
              itemModel: items[0],
              isSelected: selectedIndex == 0,
            ),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: InkWell(
            onTap: () {
              selectedIndex = 1;
              setState(() {});
            },
            child: AllExpensesItem(
              itemModel: items[1],
              isSelected: selectedIndex == 1,
            ),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: InkWell(
            onTap: () {
              selectedIndex = 2;
              setState(() {});
            },
            child: AllExpensesItem(
              itemModel: items[2],
              isSelected: selectedIndex == 2,
            ),
          ),
        ),
      ],
    );

    // return Row(
    //   children: AllExpensesRow.items.asMap().entries.map((e) {
    //     int index = e.key;
    //     var item = e.value;
    //     return Expanded(
    //       child: Padding(
    //         padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),

    //         child: InkWell(
    //           onTap: () {
    //             selectedIndex = index;
    //             setState(() {});
    //           },
    //           child: AllExpensesItem(
    //             itemModel: item,
    //             isSelected: selectedIndex == index,
    //           ),
    //         ),
    //       ),
    //     );
    //   }).toList(),
    // );
  }
}
