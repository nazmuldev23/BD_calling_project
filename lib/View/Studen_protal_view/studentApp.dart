import 'package:bd_calling_batch2/View/Studen_protal_view/Widget/alart_dialog.dart';
import 'package:bd_calling_batch2/View/Studen_protal_view/Widget/profile_info.dart';
import 'package:bd_calling_batch2/View/Studen_protal_view/student_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sign_in_button/sign_in_button.dart';

import 'Widget/profile_avatar.dart';

class StudentApp extends StatelessWidget {
  const StudentApp({super.key});

  static const String name = '/student_app';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFD),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2166C5),
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          'Student App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Get.snackbar(
              //   backgroundColor: Colors.green.shade100,
              //     snackPosition: SnackPosition.BOTTOM,
              //     "login",'success');
              SettingsDialog.show(
                title: 'Alart box',
                content: 'Do you want to navigate in settings',
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SizedBox(height: 18),

              // Profile Avatar
              Profile_avatar(),

              const SizedBox(height: 16),

              const Text(
                'Nazmul Hossain',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF101828),
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                'Student',
                style: TextStyle(fontSize: 18, color: Color(0xFF667085)),
              ),

              const SizedBox(height: 10),

              // Student Information Card
              Card(
                elevation: 2,
                color: Colors.white,
                margin: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      ProfileInfo(
                        icon: Icons.person,
                        label: 'Full Name',
                        value: 'Nazmul Hossain',
                      ),
                      const Divider(height: 1),
                      const ProfileInfo(
                        icon: Icons.perm_contact_calendar_outlined,
                        label: 'Student ID',
                        value: '749825',
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 28),

              // Logout Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue
                  ),
                  onPressed: () {
                    Get.off(() =>  StudentProfile());
                  },
                  child: Text('View Profile'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
