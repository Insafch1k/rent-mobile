import 'package:domof/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  void initState() {
    super.initState();
  }

  Future<void> _handleClose() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('showLogin', false);
    if (mounted) {
      context.go('/');
    }
  }

  void _handleStart() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('showLogin', true);
    if (mounted) {
      context.go('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/onboarding_hand.png',
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    'Вас приветствует Домов!',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 24.0, fontFamily: 'SFPro-Medium'),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    'Мы поможем вам:',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20.0, fontFamily: 'SFPro-Medium'),
                  ),
                  const SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/onboarding_house.png',
                        height: 40,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(width: 8.0),
                      const Text(
                        'Снять квартиру',
                        style: TextStyle(
                            fontSize: 20.0, fontFamily: 'SFPro-Regular'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/onboarding_keys.png',
                        height: 40,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(width: 8.0),
                      const Text(
                        'Сдать квартиру',
                        style: TextStyle(
                            fontSize: 20.0, fontFamily: 'SFPro-Regular'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40.0),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 40,
                    child: ElevatedButton(
                      onPressed: _handleStart,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.rightBlue,
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: const Text(
                        'Начать',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'SFPro-Medium',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 30.0,
            right: 10.0,
            child: IconButton(
              icon: const Icon(Icons.close),
              onPressed: _handleClose,
              color: Colors.black,
              iconSize: 40.0,
            ),
          ),
        ],
      ),
    );
  }
}
