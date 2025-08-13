import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/edit_color_item_list.dart';
import 'package:notes_app/views/widgets/show_snak_bar.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(
              title: 'Edit Note',
              icon: Icon(Icons.check),
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = subtitle ?? widget.note.subtitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                showSnackBar(context, 'Edit Note Successful');
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 50),
            CustomTextFormField(
              hintText: widget.note.title,
              onChang: (p0) {
                title = p0;
              },
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              hintText: widget.note.subtitle,
              maxLines: 5,
              onChang: (p0) {
                subtitle = p0;
              },
            ),
            SizedBox(height: 60),
            EditNotesColorsList(note: widget.note),
          ],
        ),
      ),
    );
  }
}
