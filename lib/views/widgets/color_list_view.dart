import 'package:flutter/material.dart';

class colorItem extends StatelessWidget {
  const colorItem({super.key, required this.isActive, required this.color});
final bool isActive ;
final Color color ;
  @override
  Widget build(BuildContext context) {
    return isActive ?   CircleAvatar(
      radius: 35,
      backgroundColor: Colors.white ,
      child: CircleAvatar(
      radius: 30,
      backgroundColor: color,
    )   
    )
    : CircleAvatar(
      radius: 35,
      backgroundColor: color,
    );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0 ;
  List<Color> colors = 
  [
  const Color(0xFFFFAB91), // Peach
  const Color(0xFFFFCC80), // Orange
  const Color(0xFFE6EE9B), // Lime
  const Color(0xFF80DEEA), // Cyan
  const Color(0xFFCF93D9), // Purple
  const Color(0xFFB39DDB), // Lavender
  const Color(0xFF81D4FA), // Blue
  const Color(0xFFA5D6A7), // Green
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
      itemBuilder: (context , index)
      {
        return GestureDetector(
          onTap: () {
            currentIndex =index ;
            setState(() {
              
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: colorItem(
              color: colors[index],
              isActive: currentIndex == index,
            ),
          ),
        );
      }
      ),
    );
  }
}
