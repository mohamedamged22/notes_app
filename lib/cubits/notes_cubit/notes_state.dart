part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NoteLoading extends NotesState {}

final class NoteSuccess extends NotesState {
  final List<NoteModel> notes;
  NoteSuccess(this.notes);
}

final class NoteFailure extends NotesState {
  final String errorMessage;

  NoteFailure(this.errorMessage);
}
