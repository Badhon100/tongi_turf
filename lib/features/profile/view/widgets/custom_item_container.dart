import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tongi_turf/core/theme/app_colors.dart';
import 'package:tongi_turf/core/widgets/custom_widgets.dart';

class CustomItemContainer extends StatelessWidget {
  const CustomItemContainer({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width(context),
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.darkBg.withOpacity(0.2)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width(context) * 0.05,
            vertical: height(context) * 0.02,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: AppColors.primaryLight.withOpacity(0.2),
                    child: Icon(icon, size: 30, color: AppColors.primaryLight),
                  ),
                  sW16(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      t16b_textPrimary(title),
                      sH8(),
                      t14_textSecondary(subtitle),
                    ],
                  ),
                ],
              ),

              CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.textDisabled.withOpacity(0.1),
                child: Icon(
                  CupertinoIcons.arrow_right,
                  size: 30,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
