import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/views/widgets/constants.dart';

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
 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
      itemBuilder: (context , index)
      {
        return GestureDetector(
          onTap: () {
            currentIndex =index ;
            BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
            setState(() {
              
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: colorItem(
              color: kColors[index],
              isActive: currentIndex == index,
            ),
          ),
        );
      }
      ),
    );
  }
}
