import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_app_with_clean_architecture/core/colors_manger.dart';
import 'package:mini_app_with_clean_architecture/features/upgrade_plan/presentation/view/upgrade_plan_screen.dart';

class PreviewAndWatchNowButton extends StatefulWidget {
  const PreviewAndWatchNowButton({super.key});

  @override
  State<PreviewAndWatchNowButton> createState() =>
      _PreviewAndWatchNowButtonState();
}

class _PreviewAndWatchNowButtonState extends State<PreviewAndWatchNowButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF16103C),
      height: 90,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButton(
            "Preview",
            Color(0xFF464061),
            Colors.white,
            "assets/svg/preview.svg",
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UpgradePlanPage()),
              );
            },
            child: _buildButton(
              "Watch Now",
              ColorsManger.mainColor,
              Colors.white,
              "assets/svg/watch_now.svg",
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String text, Color bgColor, Color textColor, String svg) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          SvgPicture.asset(svg, width: 20),
          const SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
