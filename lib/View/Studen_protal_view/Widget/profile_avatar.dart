import 'package:flutter/material.dart';

class Profile_avatar extends StatelessWidget {
  const Profile_avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 160,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue.shade100,
      ),
      child: const Icon(Icons.person, size: 110, color: Color(0xFF2166C5)),
    );
  }
}