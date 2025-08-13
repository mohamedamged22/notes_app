import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class CustomNotesListView extends StatelessWidget {
  const CustomNotesListView({super.key});

  final data = const [
    Color(0xFFFFCC80),
    Color(0xFFB2EBF2),
    Color(0xFFC8E6C9),
    Color(0xFFFFAB91),
    Color(0xFFD1C4E9),
    Color(0xFFFFF59D),
    Color(0xFF80DEEA),
    Color(0xFFA5D6A7),
    Color(0xFFFFCDD2),
    Color(0xFFCE93D8),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: CustomNoteItem(note: notes[index]),
              );
            },
          ),
        );
      },
    );
  }
}
