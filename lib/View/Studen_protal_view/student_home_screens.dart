import 'package:bd_calling_batch2/View/Studen_protal_view/Widget/class_card.dart';
import 'package:bd_calling_batch2/View/Studen_protal_view/Widget/header_section.dart';
import 'package:bd_calling_batch2/View/Studen_protal_view/Widget/item.dart';
import 'package:flutter/material.dart';

class StudentHomeScreens extends StatelessWidget {
  const StudentHomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderSectionWidget(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MenuItem(
                      title: 'My course',
                      icon: Icons.account_balance_wallet,
                      color: Colors.blue,
                      onTap: () {},
                    ),
                    MenuItem(
                      title: 'Assignments',
                      icon: Icons.article,
                      color: Colors.blue,
                      onTap: () {},
                    ),
                    MenuItem(
                      title: 'Routine',
                      icon: Icons.calendar_month,
                      color: Colors.green,
                      onTap: () {},
                    ),
                    MenuItem(
                      title: 'Profile',
                      icon: Icons.article,
                      color: Colors.red,
                      onTap: () {

                      },
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Upcoming Classes',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See All',
                        style: TextStyle(
                          color: Color(0xFF2468D8),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ClassCard(
                  icon: Icons.desktop_mac_outlined,
                  title: 'Flutter App development',
                  room: '150',
                  time: '11:00 am - 12:00 am',
                  iconColor: Colors.indigo,
                  backgroundColor: Colors.blue.shade50
              ),
              ClassCard(
                  icon: Icons.code_off,
                  title: 'Database Systems',
                  room: '140',
                  time: '11:00 am - 12:00 am',
                  iconColor: Colors.red,
                  backgroundColor: Colors.red.shade50
              ),
              ClassCard(
                  icon: Icons.menu_book,
                  title: 'Web design',
                  room: '158',
                  time: '11:00 am - 12:00 am',
                  iconColor: Colors.green,
                  backgroundColor: Colors.green.shade50
              ),





            ],
          ),
        ),
      ),
    );
  }
}
