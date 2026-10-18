
import 'package:flutter/material.dart';

class ClassCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String room;
  final String time;
  final Color iconColor;
  final Color backgroundColor;
  final VoidCallback? onTap;

  const ClassCard({
    super.key,
    required this.icon,
    required this.title,
    required this.room,
    required this.time,
    required this.iconColor,
    required this.backgroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 7,
        ),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            // Class Icon
            Container(
              height: 76,
              width: 76,
              decoration: BoxDecoration(
                color: backgroundColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: iconColor,
                size: 35,
              ),
            ),

            const SizedBox(width: 15),

            // Class Information
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF101828),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    room,
                    style: const TextStyle(
                      color: Color(0xFF667085),
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    time,
                    style: const TextStyle(
                      color: Color(0xFF667085),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),

            const Icon(
              Icons.chevron_right,
              color: Color(0xFF667085),
              size: 28,
            ),
          ],
        ),
      ),
    );
  }
}
