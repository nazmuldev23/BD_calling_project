
import 'package:bd_calling_batch2/TravelApp/widget/category_button.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({super.key});

  @override
  State<CategorySection> createState() =>
      _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  String selectedCategory = 'Popular';

  final List<String> categories = [
    'All',
    'Beach',
    'Mountain',
    'Historical',
    'Forest',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (context, index) =>
            const SizedBox(width: 10),
        itemBuilder: (context, index) {
          final category = categories[index];

          return CategoryButton(
            title: category,
            isSelected: selectedCategory == category,
            onTap: () {
              setState(() {
                selectedCategory = category;
              });
            },
          );
        },
      ),
    );
  }
}
