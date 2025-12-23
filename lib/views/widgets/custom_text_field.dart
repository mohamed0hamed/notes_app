import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/constants.dart';
class CustomTextField extends StatelessWidget {
   CustomTextField({super.key , this.hintText , this.onSubmitted});
 final String? hintText;

 Function (String value)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KprimaryColor,
      onSubmitted: onSubmitted  ,
          decoration: InputDecoration(
            hintText:hintText ,
            hintStyle: TextStyle(
              color: KprimaryColor
            ),
            border: BuildBorder(),
            enabledBorder: BuildBorder(),
            focusedBorder: BuildBorder(KprimaryColor)
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
