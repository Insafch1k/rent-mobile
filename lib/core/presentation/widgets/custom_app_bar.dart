import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final bool showSettingsButton;
  final bool showLogoutButton;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showBackButton = true,
    this.showSettingsButton = false,
    this.showLogoutButton = false,
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
              onPressed: () => context.pop(),
            )
          : null,
      actions: [
        if (showSettingsButton)
          IconButton(
            icon: const Icon(Icons.tune),
            onPressed: () {},
          ),
        if (showLogoutButton)
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              final prefs = await SharedPreferences.getInstance();
              prefs.setBool('showLogin', false);

              if (context.mounted) context.pushReplacement('/onboarding');
            },
          )
      ],
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
