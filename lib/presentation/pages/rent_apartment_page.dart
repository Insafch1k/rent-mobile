import 'package:domof/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class RentApartmentPage extends StatelessWidget {
  const RentApartmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppBar(title: 'Сдать квартиру'));
  }
}
