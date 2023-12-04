part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NoteSuccess extends NotesState {

  final List<NoteModel> notes;

  NoteSuccess(this.notes);
}

class NotesFailure extends NotesState{

  final String errorMessage;

  NotesFailure(this.errorMessage);
}