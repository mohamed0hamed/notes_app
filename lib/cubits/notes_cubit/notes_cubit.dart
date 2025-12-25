import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());


void fetchAllNotes() 
  {
    try {
  var noteBox = Hive.box<NoteModel>(knoteBox);
  List <NoteModel> notes = noteBox.values.toList();
  emit(Notessuccess(notes: notes));
}  catch (ex) {
   emit(Notesfailure(errorMassage: ex.toString()));
}
  }
  
}