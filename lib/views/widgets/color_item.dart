import 'package:flutter/material.dart';

class ColorsItemList extends StatefulWidget {
  const ColorsItemList({super.key});

  @override
  State<ColorsItemList> createState() => _ColorsItemListState();
}

class _ColorsItemListState extends State<ColorsItemList> {
  int currentIndex = 0;
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
                setState(() {
                  
                });
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

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.data, required this.isChosen});

  final Color data;
  final bool isChosen;

  @override
  Widget build(BuildContext context) {
    return isChosen
        ? CircleAvatar(
          backgroundColor: Colors.white,
          radius: 28,
          child: CircleAvatar(radius: 22, backgroundColor: data),
        )
        : CircleAvatar(radius: 28, backgroundColor: data);
  }
}
