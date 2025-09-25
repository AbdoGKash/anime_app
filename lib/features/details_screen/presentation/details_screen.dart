import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mini_app_with_clean_architecture/features/details_screen/presentation/widget/images_and_text_and_svg.dart';
import 'package:mini_app_with_clean_architecture/features/details_screen/presentation/widget/preview_and_watch_now_button.dart';

class AnimeDetailsScreen extends StatefulWidget {
  const AnimeDetailsScreen({super.key});

  @override
  State<AnimeDetailsScreen> createState() => _AnimeDetailsScreenState();
}

class _AnimeDetailsScreenState extends State<AnimeDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/details_screen_2.png"),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 30, sigmaY: 40),

            child: Container(color: Colors.black.withOpacity(0.4)),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0x802E1A47), Color(0x804D2C91)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: ImagesAndTextAndSvg(),
          ),
        ],
      ),
      bottomNavigationBar: PreviewAndWatchNowButton(),
    );
  }
}
