
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static const String name = '/profile_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFD),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2166C5),
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'My Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Edit profile clicked'),
                ),
              );
            },
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(22),
          child: Column(
            children: [
              const SizedBox(height: 18),

              // Profile Avatar
              profile_avatar(),

              const SizedBox(height: 16),

              const Text(
                'Rahim Uddin',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF101828),
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                'Student',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF667085),
                ),
              ),

              const SizedBox(height: 28),

              // Student Information Card
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.04),
                      blurRadius: 15,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: const Column(
                  children: [
                    _ProfileInfo(
                      icon: Icons.person,
                      label: 'Roll No',
                      value: '20230123',
                    ),
                    Divider(height: 1),
                    _ProfileInfo(
                      icon: Icons.school,
                      label: 'Department',
                      value: 'Computer Science',
                    ),
                    Divider(height: 1),
                    _ProfileInfo(
                      icon: Icons.email,
                      label: 'Email',
                      value: 'rahim123@example.com',
                    ),
                    Divider(height: 1),
                    _ProfileInfo(
                      icon: Icons.phone,
                      label: 'Phone',
                      value: '017XXXXXXXX',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 28),

              // Logout Button
              SizedBox(
                width: double.infinity,
                height: 58,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.logout),
                  label: const Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEF4444),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class profile_avatar extends StatelessWidget {
  const profile_avatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 160,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFDCEBFF),
      ),
      child: const Icon(
        Icons.person,
        size: 110,
        color: Color(0xFF2166C5),
      ),
    );
  }
}

class _ProfileInfo extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _ProfileInfo({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 19),
      child: Row(
        children: [
          Icon(
            icon,
            size: 32,
            color: const Color(0xFF667085),
          ),
          const SizedBox(width: 25),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF667085),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFF475467),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
