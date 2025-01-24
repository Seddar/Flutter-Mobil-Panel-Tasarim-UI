import 'package:bosscubes2/utils/constants/colors.dart';
import 'package:bosscubes2/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class TAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TAppbar({
    super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnPressed,
    this.showBackArrow = false,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(),
      child: Padding(
        padding: const EdgeInsets.symmetric(),
        child: AppBar(
          backgroundColor: TColors.primaryColor,
          automaticallyImplyLeading: true,
          leading: IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Image(
                image: AssetImage('assets/logos/BossCubess.png'),
              )),
          title: title,
          actions: actions,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
