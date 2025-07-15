import 'package:domof/core/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ReferralPage extends StatelessWidget {
  const ReferralPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Реферальная ссылка'),
    );
  }
}
