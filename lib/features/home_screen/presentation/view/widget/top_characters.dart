import 'package:flutter/material.dart';

class TopCharacters extends StatefulWidget {
  const TopCharacters({super.key});

  @override
  State<TopCharacters> createState() => _TopCharactersState();
}

class _TopCharactersState extends State<TopCharacters> {
  final List<String> characters = [
    "Gon Freecss",
    "Naruto Uzumaki",
    "Luffy",
    "Gon Freecss",
    "Naruto Uzumaki",
  ];
  final List<String> charAnime = [
    "Hunter x Hunter",
    "Naruto",
    "One Piece",
    "Hunter x Hunter",
    "Naruto",
  ];
  final List<String> topcharactersImage = [
    "assets/images/Ellipse_3.png",
    "assets/images/Ellipse_2.png",
    "assets/images/Ellipse_1.png",
    "assets/images/Ellipse_3.png",
    "assets/images/Ellipse_2.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 143,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: characters.length,
        itemBuilder: (context, index) {
          return Container(
            width: 108,
            margin: EdgeInsets.only(right: 10),
            child: Column(
              children: [
                SizedBox(
                  width: 92,
                  height: 92,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      topcharactersImage[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  characters[index],
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  charAnime[index],
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
