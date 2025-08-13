import 'package:flutter/material.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/views/widgets/color_item.dart';

class EditNotesColorsList extends StatefulWidget {
  const EditNotesColorsList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNotesColorsList> createState() => _EditNotesColorsListState();
}

class _EditNotesColorsListState extends State<EditNotesColorsList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = data.indexOf(Color(widget.note.color));
    super.initState();
  }

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
    return SizedBox(
      height: 55,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = data[index].value;
                setState(() {});
              },
              child: ColorItem(
                data: data[index],
                isChosen: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
