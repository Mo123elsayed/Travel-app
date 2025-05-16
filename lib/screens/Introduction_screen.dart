import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/screens/bottom_tabs_screen.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});
  static const ScreenRoute = '/intro-screen';

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> with TickerProviderStateMixin {
  bool _animate = false;
  bool _showButton = false;
  late AnimationController _buttonController;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        setState(() {
          _animate = true;
        });
      }
    });

    _buttonController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        setState(() {
          _showButton = true;
          _buttonController.forward();
        });
      }
    });
  }

  @override
  void dispose() {
    _buttonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الخلفية
          Image.asset(
            'assets/images/المدينة-القديمة.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),

          // تأثير البلور
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(color: const Color.fromRGBO(0, 0, 0, 0.2)),
          ),

          // محتوى الصفحة بأنيميشن
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Color.fromRGBO(0, 0, 0, 0.7), Colors.transparent],
              ),
            ),
            padding: const EdgeInsets.all(20),
            alignment: Alignment.bottomLeft,
            height: double.infinity,
            child: AnimatedSlide(
              offset: _animate ? Offset.zero : const Offset(-1.0, 0.0),
              duration: const Duration(seconds: 10),
              curve: Curves.easeOut,
              child: AnimatedOpacity(
                opacity: _animate ? 1.0 : 0.0,
                duration: const Duration(seconds: 10),
                curve: Curves.easeIn,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to Your Ultimate Travel Guide!",
                      style: TextStyle(
                        letterSpacing: 2,
                        color: const Color.fromARGB(255, 231, 80, 35),
                        fontSize: 30,
                        fontFamily: "Sora",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Discover breathtaking mountains, serene lakes, sunny beaches, and charming towns all in one app.\nPlan your next adventure with ease and explore the world like never before!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Sora",
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 100),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

      // الزر مع الانيميشن بعد ثانية
      floatingActionButton: FadeTransition(
        opacity: _buttonController,
        child: _showButton
            ? FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 244, 80, 31),
                child: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
                shape: const CircleBorder(),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(BottomTabsScreen.screenRoute);
                },
              )
            : null,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
