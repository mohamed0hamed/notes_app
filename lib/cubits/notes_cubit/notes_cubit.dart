import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
List <NoteModel>? notes;

void fetchAllNotes() 
  {
  var noteBox = Hive.box<NoteModel>(knoteBox);
  notes = noteBox.values.toList();
  
  }
  
}