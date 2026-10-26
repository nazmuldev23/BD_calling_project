import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({
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
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search your destination',
            hintStyle: TextStyle(
              color: Colors.green.shade900,
            ),
            suffixIcon: Icon(
              Icons.tune,
              color: Colors.green.shade900,
            ),

            prefixIcon: Icon(
              Icons.search,
              color: Colors.green.shade900,
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