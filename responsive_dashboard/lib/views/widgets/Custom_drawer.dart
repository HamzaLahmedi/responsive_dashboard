import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item_list_view.dart';
import 'package:responsive_dashboard/views/widgets/in_active_drawer_item.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  image: Assets.imagesAvatar3,
                  title: 'Lekan Okeowo',
                  subtitle: 'demo@gmail.com'),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 48,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DraweritemModel(
                    image: Assets.imagesSettingsSystem,
                    title: 'Settings System',
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DraweritemModel(
                    image: Assets.imagesLogout,
                    title: 'Logout',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
