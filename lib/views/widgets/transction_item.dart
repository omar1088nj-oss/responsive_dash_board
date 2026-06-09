import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transction_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransctionItem extends StatelessWidget {
  const TransctionItem({super.key, required this.transctionModel});
  final TransctionModel transctionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xfffafafa),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(12),
      ),
      child: ListTile(
        title: Text(transctionModel.title, style: AppStyles.styleSemiBold16),
        subtitle: Text(
          transctionModel.date,
          style: AppStyles.styleRegular16.copyWith(color: Color(0xffaaaaaa)),
        ),
        trailing: Text(
          transctionModel.amount,
          style: AppStyles.styleSemiBold20.copyWith(
            color: transctionModel.isWidthDrawal
                ? Color(0xfff3735e)
                : Color(0xff7cd87a),
          ),
        ),
      ),
    );
  }
}
