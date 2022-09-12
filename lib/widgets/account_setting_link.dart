import 'package:flutter/material.dart';
import 'package:maxi_common/themes/themes.dart';

class AccountSettingLink extends StatelessWidget {
  const AccountSettingLink({
    Key? key,
    required this.title,
    this.icon,
    this.onTap,
    this.hasLinkIcon = true,
    this.iconBackgroundColor = AppColors.inputBckgndColor,
    this.iconColor = AppColors.appBlack,
    this.subtitle,
    this.padding = const EdgeInsets.symmetric(
      horizontal: AppStyle.appPaddingVal,
      vertical: 10,
    ),
  }) : super(key: key);

  final String title;
  final IconData? icon;
  final Function()? onTap;
  final bool hasLinkIcon;
  final Color iconBackgroundColor;
  final Color iconColor;
  final Widget? subtitle;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: AppColors.inputBckgndColor),
      ),
      contentPadding: padding,
      leading: icon != null
          ? Container(
              width: 37,
              height: 37,
              decoration: BoxDecoration(
                color: iconBackgroundColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                icon,
                color: iconColor,
                size: 20,
              ),
            )
          : null,
      title: Text(
        title,
        style: AppTextStyle.bodyText2.copyWith(fontWeight: FontWeight.w500),
      ),
      subtitle: subtitle,
      trailing: hasLinkIcon ? const Icon(Icons.chevron_right) : null,
      onTap: onTap,
    );
  }
}
