import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(title: 'Edit Note', icon: Icon(Icons.check)),
          SizedBox(height: 50),
          CustomTextFormField(hintText: 'Title'),
          SizedBox(height: 16),
          CustomTextFormField(hintText: 'Cotent', maxLines: 5),
        ],
      ),
    );
  }
}
