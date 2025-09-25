import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImagesAndTextAndSvg extends StatefulWidget {
  const ImagesAndTextAndSvg({super.key});

  @override
  State<ImagesAndTextAndSvg> createState() => _ImagesAndTextAndSvgState();
}

class _ImagesAndTextAndSvgState extends State<ImagesAndTextAndSvg> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: SizedBox(
                  width: double.infinity,
                  height: 460,
                  child: ClipRRect(
                    child: Image.asset(
                      "assets/images/details_screen_2.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 365, left: 100),
                child: Image.asset("assets/images/detalis_screen.png"),
              ),
            ],
          ),

          Wrap(
            spacing: 10,
            children: [
              _buildTag("Dark Fantasy"),
              _buildTag("Action"),
              _buildTag("Adventure"),
            ],
          ),

          const SizedBox(height: 20),
          Divider(
            thickness: 2,
            indent: 43,
            endIndent: 43,
            color: Color(0xff7472727a),
          ),
          const SizedBox(height: 7),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildInfo("2.3M views", "assets/svg/watch_now.svg"),
                _buildInfo("2K clap", "assets/svg/HandsClapping.svg"),
                _buildInfo("4 Seasons", "assets/svg/Seasonss.svg"),
              ],
            ),
          ),
          const SizedBox(height: 7),
          Divider(
            thickness: 2,
            indent: 43,
            endIndent: 43,
            color: Color(0xFF7472727A),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset("assets/svg/Vector.svg", width: 29),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.",
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                      height: 1.5,
                    ),
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTag(String text) {
    return Chip(
      label: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: Color(0xFF464061),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: Color(0xFF464061)),
      ),
    );
  }

  Widget _buildInfo(String value, String svg) {
    return Row(
      children: [
        SvgPicture.asset(svg, width: 17),
        const SizedBox(width: 7),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
