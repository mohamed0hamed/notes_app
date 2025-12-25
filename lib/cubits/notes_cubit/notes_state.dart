part of 'notes_cubit.dart';



abstract class NotesState {}

class NotesInitial extends NotesState {}
class NotesLoading extends NotesState {}
class Notessuccess extends NotesState {}
class Notesfailure extends NotesState {
  final String errorMassage ;
  Notesfailure({required this.errorMassage});
}