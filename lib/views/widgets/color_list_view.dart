import 'package:flutter/material.dart';

class colorItem extends StatelessWidget {
  const colorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 35,
      backgroundColor: Colors.blue,
    );
  }
}

class colorListView extends StatelessWidget {
  const colorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
      itemBuilder: (context , index)
      {
        return colorItem();
      }
      ),
    );
  }
}
