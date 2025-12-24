part of 'add_note_cubit.dart';



abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}
class AddNoteLoading extends AddNoteState {}
class AddNotesuccess extends AddNoteState {}
class AddNotefailure extends AddNoteState {
  final String errorMassage ;

  AddNotefailure({required this.errorMassage});
}