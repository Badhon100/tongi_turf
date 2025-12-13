import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tongi_turf/core/theme/app_colors.dart';
import 'package:tongi_turf/core/widgets/core_widgets.dart';

t14(String title) => commonText(title, size: 14);

t16(String title) => commonText(title, size: 16);

t14b600_textPrimary(String title) => commonText(
  title,
  size: 14,
  color: AppColors.textPrimary,
  fontWeight: FontWeight.w600,
);

t18b_textPrimary(String title) => commonText(
  title,
  size: 18,
  color: AppColors.textPrimary,
  fontWeight: FontWeight.bold,
);

t18b_textWhite(String title) => commonText(
  title,
  size: 18,
  color: AppColors.textWhite,
  fontWeight: FontWeight.bold,
);

t32b_textPrimary(String title) => commonText(
  title,
  size: 32,
  color: AppColors.textPrimary,
  fontWeight: FontWeight.bold,
);

t24b900_Primary(String title) => commonText(
  title,
  size: 24,
  color: AppColors.primary,
  fontWeight: FontWeight.w900,
);

t14_textSecondary(String title) => commonText(title, size: 14, color: AppColors.textSecondary);

t18_textSecondary(String title) => commonText(title, size: 18, color: AppColors.textSecondary);

t14_textPrimary(String title) => commonText(title, size: 14, color: AppColors.textPrimary);

t16_textPrimary(String title) => commonText(title, size: 16, color: AppColors.textPrimary);

t16_textWhite(String title) =>
    commonText(title, size: 16, color: AppColors.background);
t16b_textPrimary(String title) => commonText(
  title,
  size: 16,
  color: AppColors.textPrimary,
  fontWeight: FontWeight.bold,
);

t16b700_textSecondary(String title) => commonText(
  title,
  size: 16,
  color: AppColors.textSecondary,
  fontWeight: FontWeight.w700,
);

t16b_primary(String title) => commonText(
  title,
  size: 16,
  color: AppColors.primary,
  fontWeight: FontWeight.bold,
);

t18b_primary(String title) => commonText(
  title,
  size: 18,
  color: AppColors.primary,
  fontWeight: FontWeight.bold,
);

t14_primary(String title) =>
    commonText(title, size: 14, color: AppColors.primary);

t14b_primary(String title) => commonText(
  title,
  size: 14,
  color: AppColors.primary,
  fontWeight: FontWeight.bold,
);

t14b600_accentRed(String title) =>
    commonText(title, size: 14, color: AppColors.accentRed, fontWeight: FontWeight.w600);

t14_accentRed(String title) => commonText(title, size: 14, color: AppColors.accentRed);

t14_primaryLight(String title) =>
    commonText(title, size: 14, color: AppColors.primaryLight);

t18b_primaryLight(String title) => commonText(
  title,
  size: 18,
  color: AppColors.primaryLight,
  fontWeight: FontWeight.bold,
);

t14_brO32(String title) =>
    commonText(title, size: 14, color: AppColors.primaryDark);

class CustomScaffold extends Scaffold {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? drawer;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final Color? backgroundColor;

  CustomScaffold({
    super.key,
    this.appBar,
    this.backgroundColor,
    required this.body,
    this.drawer,
    this.floatingActionButton,
    this.bottomNavigationBar,
  }) : super(
         backgroundColor: backgroundColor ?? AppColors.background,
         appBar: appBar,
         body: body,
         drawer: drawer,
         floatingActionButton: floatingActionButton,
         bottomNavigationBar: bottomNavigationBar,
       );
}

sH2() => SizedBox(height: 2);

sH4() => SizedBox(height: 4);

sH8() => SizedBox(height: 8);

sH16() => SizedBox(height: 16);

sH32() => SizedBox(height: 32);

sH64() => SizedBox(height: 64);

sH100() => SizedBox(height: 100);

sW2() => SizedBox(width: 2);

sW4() => SizedBox(width: 4);

sW8() => SizedBox(width: 8);

sW16() => SizedBox(width: 16);

sW32() => SizedBox(width: 32);

sW64() => SizedBox(width: 64);

width(BuildContext context)=> MediaQuery.of(context).size.width;
height(BuildContext context) => MediaQuery.of(context).size.height;

loader() {
  return CupertinoActivityIndicator(color: Colors.white);
}
