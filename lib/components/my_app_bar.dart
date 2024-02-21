import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  bool showLeading;

  Icon? leadingIcon;
  bool showTitle;

  bool centerTitle;
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
    this.centerTitle = true,
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
          : null,
      automaticallyImplyLeading: false,
      title: showTitle ? title : null,
      centerTitle: centerTitle,
      actions: showActions ? actions : null,
    );
  }
}
