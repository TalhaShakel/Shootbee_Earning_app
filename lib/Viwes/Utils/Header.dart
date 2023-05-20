import 'package:flutter/material.dart';
import 'package:shootbee/Viwes/Utils/AppColors.dart';
import 'package:shootbee/Viwes/Utils/MyText.dart';

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  final String appbarTitle;
  final IconData icon;
  final IconData? leadingIcon;
  final VoidCallback? onPressed;

  HeaderWidget({
    required this.appbarTitle,
    required this.icon,
    this.leadingIcon,
    this.onPressed,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Icon(
        icon,
        color: MyColor.blackColor,
      ),
      title: MyText(
        text: appbarTitle,
        fontsize: 24,
        fontweight: FontWeight.bold,
      ),
      actions: [
        if (leadingIcon != null && onPressed != null)
          InkWell(
            onTap: onPressed,
            child: Icon(
              leadingIcon,
              color: MyColor.blackColor,
            ),
          ),
      ],
    );
  }
}
