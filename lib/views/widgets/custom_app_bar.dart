import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        children: [
          Text('Notes', style: TextStyle(fontSize: 28)),
          Spacer(flex: 1),
          CustomSearchIcon(),
        ],
      ),
    );
  }
}
