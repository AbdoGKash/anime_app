import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_app_with_clean_architecture/core/colors_manger.dart';

class CustomNavBar extends StatefulWidget {
  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _selectedIndex = 0;

  final List<Map<String, String>> _navItems = [
    {"icon": "assets/svg/home.svg", "label": "Home"},
    {"icon": "assets/svg/category.svg", "label": "Category"},
    {"icon": "assets/svg/search.svg", "label": "Search"},
    {"icon": "assets/svg/support.svg", "label": "Support"},
    {"icon": "assets/svg/setting.svg", "label": "Settings"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      color: Color(0xffF9F8FD),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(_navItems.length, (index) {
          bool isSelected = _selectedIndex == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              padding: EdgeInsets.symmetric(
                horizontal: isSelected ? 16 : 0,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: isSelected ? ColorsManger.mainColor : Colors.transparent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    _navItems[index]["icon"]!,
                    color: isSelected ? Colors.white : Colors.grey,
                    width: 24,
                  ),
                  if (isSelected) SizedBox(width: 8),
                  if (isSelected)
                    Text(
                      _navItems[index]["label"]!,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
