import 'package:flutter/material.dart';
import 'package:mini_app_with_clean_architecture/core/colors_manger.dart';

class ContinueButton extends StatefulWidget {
  const ContinueButton({super.key});

  @override
  State<ContinueButton> createState() => _ContinueButtonState();
}

class _ContinueButtonState extends State<ContinueButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: EdgeInsets.zero,
          ),
          onPressed: () {},
          child: Ink(
            decoration: BoxDecoration(
              color: ColorsManger.mainColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Text(
                "Continue",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
