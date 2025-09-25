import 'package:flutter/material.dart';
import 'package:mini_app_with_clean_architecture/features/home_screen/presentation/view/widget/anime_list.dart';
import 'package:mini_app_with_clean_architecture/features/home_screen/presentation/view/widget/custom_navbar.dart';
import 'package:mini_app_with_clean_architecture/features/home_screen/presentation/view/widget/filter.dart';
import 'package:mini_app_with_clean_architecture/features/home_screen/presentation/view/widget/top_characters.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> characters = ["Eren", "Naruto", "Luffy", "Tanjiro"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFDEE3FF), Color(0xFFF9F8FD)],
            ),
          ),

          child: Stack(
            children: [
              Positioned(
                top: -130,
                right: -180,
                child: Image.asset(
                  "assets/images/star.png",
                  width: 430,

                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        'Where Anime Comes Alive',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Filter(),
                    SizedBox(height: 20),
                    AnimeList(),
                    SizedBox(height: 12),
                    Text(
                      "Top Characters",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    TopCharacters(),
                    // Align(alignment: Alignment.bottomCenter, child: CustomNavBar()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
      // // شريط التنقل السفلي
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: 0,
      //   selectedItemColor: Colors.deepPurple,
      //   unselectedItemColor: Colors.grey,
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.favorite_border),
      //       label: "Favorites",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.notifications_none),
      //       label: "Alerts",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_outline),
      //       label: "Profile",
      //     ),
      //   ],
      // ),
    );
  }
}
