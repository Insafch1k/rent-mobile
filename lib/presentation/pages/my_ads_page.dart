import 'package:domof/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MyAdsPage extends StatelessWidget {
  const MyAdsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppBar(title: 'Мои объявления'));
  }
}
