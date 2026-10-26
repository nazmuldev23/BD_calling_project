
import 'package:bd_calling_batch2/View/Studen_protal_view/Controller/counter_controller.dart';
import 'package:bd_calling_batch2/View/Studen_protal_view/Widget/profile_avatar.dart';
import 'package:bd_calling_batch2/View/Studen_protal_view/Widget/profile_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudentProfile extends StatefulWidget {
  StudentProfile({super.key});

  static const String name = "/student-profile";

  final CounterController controller = Get.put(CounterController());

  @override
  State<StudentProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFD),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2166C5),
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Student App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SizedBox(height: 18),

              const Profile_avatar(),

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
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF667085),
                ),
              ),

              const SizedBox(height: 10),

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
                      const ProfileInfo(
                        icon: Icons.person,
                        label: 'Email',
                        value: 'nazmulhossain23@gmail.com',
                      ),
                      const Divider(height: 1),
                      const ProfileInfo(
                        icon: Icons.calendar_month,
                        label: 'Exam date',
                        value: '10-01-2027',
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.blue.shade100,
                    ),
                    onPressed: widget.controller.decrement,
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.black,
                    ),
                    iconSize: 40,
                  ),

                  Obx(
                    () => Text(
                      '${widget.controller.quantity.value}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                    ),
                  ),

                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: widget.controller.increment,
                    icon: const Icon(Icons.add,color: Colors.white,),
                    iconSize: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
