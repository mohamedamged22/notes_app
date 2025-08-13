import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_model_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return CustomModelSheet();
            },
          );
        },
        shape: CircleBorder(),
        backgroundColor: Colors.lightBlue,
        child: Icon(Icons.add, color: Colors.black),
      ),
      body: NotesViewBody(),
    );
  }
}
