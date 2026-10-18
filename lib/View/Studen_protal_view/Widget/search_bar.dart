import 'package:flutter/material.dart';

class Search_bar extends StatelessWidget {
  const Search_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: const TextField(
          decoration: InputDecoration(
            hintText: 'Search something...',
            hintStyle: TextStyle(
              color: Colors.blueGrey,
            ),
    ///icon
            prefixIcon: Icon(
              Icons.search,
              color: Colors.blueGrey,
              size: 28,
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(
              vertical: 16,
            ),
          ),
        ),
      ),
    );
  }
}