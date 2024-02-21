import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  bool showLeading;

  Icon? leadingIcon;
  bool showTitle;

  Widget? title;
  bool showActions;
  List<Widget>? actions;
  MyAppBar({
    super.key,
    required this.showLeading,
    this.leadingIcon,
    required this.showTitle,
    this.title,
    required this.showActions,
    this.actions,
  });

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: showLeading
          ? InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: leadingIcon,
            )
          : Container(),
      title: showTitle ? title : Container(),
      centerTitle: true,
      actions: showActions ? actions : [],
    );
  }
}
