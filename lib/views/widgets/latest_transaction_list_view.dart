import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_image.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
      title: 'Madrani Andi',
      image: Assets.imagesAvtar,
      subTitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      title: 'Josua Nunito',
      image: Assets.imagesAvtar2,
      subTitle: 'Josh Nunito@gmail.com',
    ),
    UserInfoModel(
      title: 'Madrani Andi',
      image: Assets.imagesAvtar,
      subTitle: 'Madraniadi20@gmail',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) {
          return IntrinsicWidth(child: UserInfoListTile(userInfoModel: e));
        }).toList(),
      ),
    );
  }
}


// SizedBox(
//       height: 80,
//       child: ListView.builder(
//         physics: BouncingScrollPhysics(),
//         scrollDirection: Axis.horizontal,
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           return IntrinsicWidth(
//             child: UserInfoListTile(userInfoModel: items[index]),
//           );
//         },
//       ),
//     );