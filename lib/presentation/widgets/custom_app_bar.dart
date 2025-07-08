import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final bool showSettingsButton;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showBackButton = true,
    this.showSettingsButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      titleTextStyle: TextStyle(
          color: Colors.black, fontSize: 24.0, fontFamily: 'SFPro-Semibold'),
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            )
          : null,
      centerTitle: true,
      backgroundColor: Colors.white,
      shadowColor: Colors.black38,
      elevation: 4.0,
      surfaceTintColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
