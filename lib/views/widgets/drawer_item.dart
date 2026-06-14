import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerModelItem, this.isActive});
  final DrawerItemModel drawerModelItem;
  final bool? isActive;
  @override
  Widget build(BuildContext context) {
    return isActive ?? false
        ? ActiveDrawer(drawerModelItem: drawerModelItem)
        : InActiveDrawer(drawerModelItem: drawerModelItem);
  }
}

class InActiveDrawer extends StatelessWidget {
  const InActiveDrawer({super.key, required this.drawerModelItem});

  final DrawerItemModel drawerModelItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerModelItem.image),
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(
          drawerModelItem.title,
          style: AppStyles.styleMedium16(context),
        ),
      ),
    );
  }
}

class ActiveDrawer extends StatelessWidget {
  const ActiveDrawer({super.key, required this.drawerModelItem});

  final DrawerItemModel drawerModelItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerModelItem.image),
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.none,
        child: Text(
          drawerModelItem.title,
          style: AppStyles.styleBold16(context),
        ),
      ),
      trailing: Container(
        width: 3.27,
        // height: 48,
        decoration: BoxDecoration(color: Color(0xff4EB7F2)),
      ),
    );
  }
}
