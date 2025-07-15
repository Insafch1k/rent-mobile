import 'package:domof/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/button_grid.dart';
import '../widgets/button_config.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ButtonConfig> buttons = [
      ButtonConfig(
        label: 'Снять квартиру',
        imagePath: 'assets/images/list_apartments.png',
        onPressed: () => context.push('/list'),
        isSingle: true,
        color: AppColors.listButtonColor,
        width: 350.0,
        height: 200.0,
        imageWidth: 318.0,
        imageHeight: 211.0,
        imageOffsetHorizontal: 50.0,
        imageOffsetVertical: 15.0,
      ).copyWith(textAlignTop: 60.0),
      ButtonConfig(
        label: 'Сдать квартиру',
        imagePath: 'assets/images/rent_apartments.png',
        onPressed: () => context.push('/rent'),
        isSingle: true,
        color: AppColors.rentButtonColor,
        width: 350.0,
        height: 140.0,
        imageWidth: 289.0,
        imageHeight: 300.0,
        imageOffsetHorizontal: 50.0,
        imageOffsetVertical: 15.0,
      ).copyWith(textAlignTop: 35.0),
      ButtonConfig(
        label: 'Мой профиль',
        imagePath: 'assets/images/profile.png',
        onPressed: () => context.push('/profile'),
        isSingle: false,
        color: AppColors.profileButtonColor,
        width: 160.0,
        height: 140.0,
        imageWidth: 135.0,
        imageHeight: 135.0,
        imageOffsetHorizontal: 25.0,
        imageOffsetVertical: 20.0,
      ).copyWith(textAlignTop: 30.0),
      ButtonConfig(
        label: 'Мои объявления',
        imagePath: 'assets/images/my_ads.png',
        onPressed: () => context.push('/my_ads'),
        isSingle: false,
        color: AppColors.myAdsButtonColor,
        width: 160.0,
        height: 140.0,
        imageWidth: 135.0,
        imageHeight: 135.0,
        imageOffsetHorizontal: 35.0,
        imageOffsetVertical: 10.0,
      ).copyWith(textAlignTop: 30.0),
    ];

    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Главная',
        showBackButton: false,
      ),
      body: ButtonGrid(buttons: buttons),
    );
  }
}
