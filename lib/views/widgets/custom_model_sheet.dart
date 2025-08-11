import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class CustomModelSheet extends StatelessWidget {
  const CustomModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(children: [SizedBox(height: 32), CustomTextField(hintText: 'Title',)]),
    );
  }
}
