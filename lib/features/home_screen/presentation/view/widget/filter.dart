import 'package:flutter/material.dart';
import 'package:mini_app_with_clean_architecture/core/colors_manger.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  final List<String> categories = [
    'ALL',
    'Popular',
    'Trending',
    'New Releases',
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 4.0, left: 4.0),
            child: ChoiceChip(
              shape: StadiumBorder(),
              showCheckmark: false,
              label: Text(
                categories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: _selectedIndex == index
                      ? Colors.white
                      : ColorsManger.mainColor,
                ),
              ),
              selected: _selectedIndex == index,
              selectedColor: ColorsManger.mainColor,

              onSelected: (bool selected) {
                setState(() {
                  _selectedIndex = selected ? index : 0;
                });
              },
            ),
          );
        },
      ),
    );
  }
}
