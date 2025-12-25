import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}


class _AddNoteFormState extends State<AddNoteForm> {
 final GlobalKey<FormState> formKey = GlobalKey();
 AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title , subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
        const  SizedBox(height: 25,),
          CustomTextField(
            onsaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          const SizedBox(height: 16,),
           CustomTextField(
            onsaved: (value) {
              subtitle = value ;
            },
            hintText: 'Content',
            maxlines: 5,
          ),
         const SizedBox(height: 48,),
          CustomButton(
            onTap: () {
              if(formKey.currentState!.validate())
              {
                formKey.currentState!.save();
              }
              else
              {
                autovalidateMode = AutovalidateMode.onUserInteraction;
                setState(() {
                  
                });
            }
            },
            hintButton: 'Add',
          ),
        const  SizedBox(height: 25,)
        ],
      ),
    );
  }
}