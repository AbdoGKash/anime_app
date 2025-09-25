import 'package:flutter/material.dart';
import 'package:mini_app_with_clean_architecture/core/colors_manger.dart';
import 'package:mini_app_with_clean_architecture/features/details_screen/presentation/details_screen.dart';

class AnimeList extends StatefulWidget {
  const AnimeList({super.key});

  @override
  State<AnimeList> createState() => _AnimeListState();
}

class _AnimeListState extends State<AnimeList> {
  final List<String> animeImages = [
    "assets/images/anime_1.png",
    "assets/images/anime_2.png",
    "assets/images/anime_3.png",
    "assets/images/anime_1.png",
  ];
  final List<double> ratings = [4.8, 4.5, 4.7, 4.9];
  final List<String> genres = ["Mystery", "Adventure", "Action", "Fantasy"];
  final List<String> characters = ["Eren", "Naruto", "Luffy", "Tanjiro"];
  final List<String> animeTitles = [
    "Attack on Titan",
    "Naruto",
    "One Piece",
    "Demon Slayer",
  ];
  final List<String> charAnime = ["AOT", "Naruto", "One Piece", "Demon Slayer"];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: animeTitles.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Column(
              children: [
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AnimeDetailsScreen(),
                          ),
                        );
                      },
                      child: SizedBox(
                        width: 198,
                        height: 247,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            animeImages[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        width: 40,
                        height: 16,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade50,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: ColorsManger.mainColor,
                              size: 14,
                            ),
                            Text(
                              "${ratings[index]}",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  animeTitles[index],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  animeTitles[index],
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                  maxLines: 1,
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
