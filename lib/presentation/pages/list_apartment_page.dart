import 'package:domof/presentation/widgets/custom_app_bar.dart';
import 'package:domof/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/custom_button.dart';

class ListApartmentPage extends StatelessWidget {
  const ListApartmentPage({super.key});

  void _showDialogAndNavigate(BuildContext context, String type) async {
    final TextEditingController controller = TextEditingController();
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Введите данные для $type'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(labelText: 'Название или описание'),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Отмена'),
          ),
          TextButton(
            onPressed: () {
              if (controller.text.isNotEmpty) {
                Navigator.pop(context);

                String path = type == 'Съем посуточно'
                    ? '/short-term-rent?data=${controller.text}'
                    : '/long-term-rent?data=${controller.text}';
                context.push(path);
              }
            },
            child: const Text('Подтвердить'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Снять квартиру'),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    'Выберите вариант съема',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'SFPro-Medium',
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 200.0,
                  child: CustomButton(
                    label: 'Продолжительное проживание',
                    imagePath: 'assets/images/long_term_rent.png',
                    onPressed: () => _showDialogAndNavigate(
                        context, 'Съем на продолжительное проживание'),
                    color: AppColors.termRentButtonsColor,
                    width: double.infinity,
                    height: 200.0,
                    imageWidth: 152.0,
                    imageHeight: 136.0,
                    imageOffsetHorizontal: 0.0,
                    imageOffsetVertical: 0.0,
                    textAlignLeft: 5.0,
                    textAlignTop: 45.0,
                    textColor: Colors.black,
                    maxTextWidth: 200,
                  ),
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  height: 200.0,
                  child: CustomButton(
                    label: 'Посуточное проживание',
                    imagePath: 'assets/images/short_term_rent.png',
                    onPressed: () =>
                        _showDialogAndNavigate(context, 'Съем посуточно'),
                    color: AppColors.termRentButtonsColor,
                    width: double.infinity,
                    height: 200.0,
                    imageWidth: 162.0,
                    imageHeight: 146.0,
                    imageOffsetHorizontal: 0.0,
                    imageOffsetVertical: 0.0,
                    textAlignLeft: 5.0,
                    textAlignTop: 45.0,
                    textColor: Colors.black,
                    maxTextWidth: 200,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
