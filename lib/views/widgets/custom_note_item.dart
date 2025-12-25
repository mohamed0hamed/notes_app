import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_notes_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNotesView.id);
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 16
        ),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(note.title , 
              style:const TextStyle(
                color: Colors.black,
                fontSize: 26
              ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(note.subtitle, 
                 style: TextStyle(
                  color: Colors.black.withValues(alpha: .4),
                  fontSize: 17
                ),
                ),
              ),
              trailing: IconButton(onPressed: (){
                note.delete();
              },
               icon:Icon(FontAwesomeIcons.trash),
                iconSize: 30,
                color: Colors.black,
                ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(note.date,
               style: TextStyle(
                  color: Colors.black.withValues(alpha: .4),
                  
                ),
              
              ),
            )
          ],
        ),
        
      ),
    );
  }
}