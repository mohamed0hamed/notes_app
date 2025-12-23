import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25,),
            CustomTextField(
              hintText: 'Title',
            ),
             SizedBox(height: 16,),
             CustomTextField(
              hintText: 'Content',
              maxlines: 5,
            ),
            SizedBox(height: 48,),
            CustomButton(
              hintButton: 'Add',
            ),
            SizedBox(height: 25,)
          ],
        ),
      ),
    );
  }
}