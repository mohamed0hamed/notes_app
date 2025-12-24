import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/constants.dart';
class CustomTextField extends StatelessWidget {
 const CustomTextField({super.key ,this.hintText , this.onSubmitted , this.maxlines = 1});
 final String? hintText;
 final int maxlines;
 final Function (String value)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      cursorColor: kprimaryColor,
      onSubmitted: onSubmitted  ,
          decoration: InputDecoration(
            hintText:hintText ,
            hintStyle: TextStyle(
              color: kprimaryColor
            ),
            border: BuildBorder(),
            enabledBorder: BuildBorder(),
            focusedBorder: BuildBorder(kprimaryColor)
          ),
        );
  }

  OutlineInputBorder BuildBorder([Color]) {
    return OutlineInputBorder(
             borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: Color ?? Colors.white
            )
          );
  }
  }
