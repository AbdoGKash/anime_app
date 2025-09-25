import 'package:flutter/material.dart';
import 'package:mini_app_with_clean_architecture/features/upgrade_plan/presentation/view/widget/continue_button.dart';
import 'package:mini_app_with_clean_architecture/features/upgrade_plan/presentation/view/widget/top_screen.dart';
import 'package:mini_app_with_clean_architecture/features/upgrade_plan/presentation/view/widget/upgrade_plan_button.dart';

class UpgradePlanPage extends StatefulWidget {
  const UpgradePlanPage({super.key});

  @override
  State<UpgradePlanPage> createState() => _UpgradePlanPageState();
}

class _UpgradePlanPageState extends State<UpgradePlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFD4D7FF), Color(0xFFF7F8FE)],
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: -170,
                left: -200,
                child: Image.asset(
                  "assets/images/star.png",
                  width: 430,

                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 60,
                right: -240,
                child: Image.asset(
                  "assets/images/star.png",
                  width: 430,

                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    TopScreen(),
                    SizedBox(height: 10),
                    UpgradePlanButton(),
                    ContinueButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
