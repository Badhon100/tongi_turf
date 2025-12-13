import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tongi_turf/core/helper/dialog_helper.dart';
import 'package:tongi_turf/core/theme/app_colors.dart';
import 'package:tongi_turf/core/widgets/custom_widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:tongi_turf/features/authentication/repository/auth_repository.dart';
import 'package:tongi_turf/features/profile/view/widgets/custom_item_container.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: Center(child: t24b900_Primary('Profile')),
        actions: [
          IconButton(
            onPressed: () {
              showAppConfirmationDialog(
                context: context,
                title: 'Log Out',
                message: 'Are you sure you want to log out?',
                confirmText: 'Log Out',
                isDestructive: true,
                onConfirm: () {
                  GetIt.instance<AuthRepository>().logout();
                },
              );
            },

            icon: const Icon(
              CupertinoIcons.square_arrow_right,
              size: 30,
              color: AppColors.accentRed,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
        child: Column(
          children: [
            Container(
              width: width(context),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColors.primaryLight, AppColors.textDisabled],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width(context) * 0.05,
                  vertical: height(context) * 0.02,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: AppColors.background,
                      child: Icon(
                        CupertinoIcons.person,
                        size: 30,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    sW16(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        t18b_textWhite("Badhon Ahmed"),
                        t16_textWhite("badhonx102@gmail.com"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            sH16(),
            CustomItemContainer(
              icon: CupertinoIcons.padlock,
              title: "Change password",
              subtitle: "Change your password",
              onTap: () {},
            ),
            sH8(),
            CustomItemContainer(
              icon: CupertinoIcons.list_number,
              title: "Admin list",
              subtitle: "Create and manage admins",
              onTap: () {},
            ),
            sH8(),
            CustomItemContainer(
              icon: CupertinoIcons.square_list ,
              title: "Slot management",
              subtitle: "Create and manage slots",
              onTap: () {},
            ),
            sH8(),
            CustomItemContainer(
              icon: CupertinoIcons.chart_bar_square,
              title: "Revenue report",
              subtitle: "View your revenue reports",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}