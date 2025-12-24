import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/constants.dart';
class CustomTextField extends StatelessWidget {
 const CustomTextField({super.key ,this.hintText , this.onsaved , this.maxlines = 1});
 final String? hintText;
 final int maxlines;
 final void Function(String?value )? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxlines,
      cursorColor: kprimaryColor,
      onSaved: onsaved  ,
      validator: (value) {
        if(value?.isEmpty ?? true)
        {
          return 'filed is requred';
        }
        else
        {
          return null;
        }
      },
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
