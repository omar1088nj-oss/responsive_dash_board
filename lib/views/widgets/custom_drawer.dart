import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_image.dart';
import 'package:responsive_dash_board/views/widgets/darwer_items_list_view.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              picture: Assets.imagesAvtar3,
              subTitle: 'demo@gmail.com',
              title: 'Lekan Okeowo',
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemsListView(),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                UnActiveDrawer(
                  drawerModelItem: DrawerItemModel(
                    title: 'Setting system',
                    image: Assets.imagesSetting2,
                  ),
                ),
                UnActiveDrawer(
                  drawerModelItem: DrawerItemModel(
                    title: 'Logout account',
                    image: Assets.imagesLogout,
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
