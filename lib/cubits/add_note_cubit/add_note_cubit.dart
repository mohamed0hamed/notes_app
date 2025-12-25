   
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/constants.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  void addNote(NoteModel note) async
  {
    emit(AddNoteLoading());
    try {
  var noteBox = Hive.box<NoteModel>(knoteBox);
  await noteBox.add(note);
  emit(AddNotesuccess());
}  catch (ex) {
   emit(AddNotefailure(errorMassage: ex.toString()));
}
  }
}