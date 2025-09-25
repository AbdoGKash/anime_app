import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopScreen extends StatelessWidget {
  const TopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 119),
            Text(
              "Upgrade Plan",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Color(0xFF18153F),
              ),
            ),
            const SizedBox(width: 100),
            SvgPicture.asset("assets/svg/exite.svg"),
          ],
        ),

        SizedBox(
          width: 207,
          height: 207,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "assets/images/Rocket Boy 1.png",
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Title and subtitle
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Text(
                "Seamless Anime ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF18153F),
                ),
              ),
              Text(
                "Experience, Ad-Free.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF18153F),
                ),
              ),

              Text(
                "Enjoy unlimited anime streaming without interruptions.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFAEADB5),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
