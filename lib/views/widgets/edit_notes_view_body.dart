import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/edit_note_color_list.dart';
class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({super.key, required this.note});
final NoteModel note ;

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
String ? title , content ;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: (){
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
              
            },
          ),
        SizedBox(height: 32,),
          CustomTextField(
            onChanged: (value) {
              title = value ;
            },
            hintText: widget.note.title,
          ),
          SizedBox(height: 16,),
          CustomTextField(
            onChanged: (value) {
              content = value ;
            },
            hintText: widget.note.subtitle,
            maxlines: 5,
          ),
          SizedBox(height: 16,),

          EditNotesColorList(
            note: widget.note,
          ),

        ],
      ),
    );
  }
}


