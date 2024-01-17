import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/utils/device/AppDeviceUtils.dart';

class AppBarWidget extends StatelessWidget implements PreferredSize {
  const AppBarWidget(
      {super.key,
      this.title,
      required this.showBackArrow,
      this.iconData,
      this.actions,
      this.loadingInPress});

  final Widget? title;
  final bool showBackArrow;
  final IconData? iconData;
  final List<Widget>? actions;
  final VoidCallbackAction? loadingInPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: AppBar(

        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back))
            : iconData!=null?IconButton(onPressed: () => loadingInPress, icon: Icon(iconData)):null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromWidth(AppDeviceUtils.getAppBarHeight());
}
