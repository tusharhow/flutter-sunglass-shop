import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryPicker extends StatefulWidget {
  const CategoryPicker({Key? key}) : super(key: key);

  @override
  State<CategoryPicker> createState() => _CategoryPickerState();
}

class _CategoryPickerState extends State<CategoryPicker> {
  int selectedIndex = 0;
  final List<String> _screen = [
    "Trending",
    "Casual",
    "Original",
    "Fashion",
    "Sports",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: _buildCategoryPicker(index),
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryPicker(int index) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          height: 60,
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              _screen[index],
              style: GoogleFonts.dmSans(
                color: selectedIndex == index ? Colors.black : Colors.black26,
                fontSize: 21.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
