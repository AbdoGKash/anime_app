import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_app_with_clean_architecture/features/details_screen/presentation/details_screen.dart';
import 'package:mini_app_with_clean_architecture/features/home_screen/presentation/view/home_screen.dart';
import 'package:mini_app_with_clean_architecture/features/upgrade_plan/presentation/view/upgrade_plan_screen.dart';

void main() {
  runApp(AnimeApp());
}

class AnimeApp extends StatelessWidget {
  const AnimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class BlurBackgroundPage extends StatelessWidget {
  const BlurBackgroundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // الخلفية صورة
          Image.asset(
            "assets/images/details_screen_2.png", // ضع مسار الصورة
            fit: BoxFit.cover,
          ),

          // البلور
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 77, sigmaY: 77),
            child: Container(
              color: Colors.black.withOpacity(
                0.3,
              ), // شفاف عشان يخلي البلور يبان
            ),
          ),

          // Overlay ألوان (مثلاً تدرج بنفسجي)
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0x802E1A47), // لون شفاف غامق
                  Color(0x804D2C91), // لون بنفسجي شفاف
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          // المحتوى الأساسي
          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.rocket_launch, size: 100, color: Colors.white),
                  const SizedBox(height: 20),
                  Text(
                    "Seamless Anime Experience",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Ad-Free Unlimited Streaming",
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
