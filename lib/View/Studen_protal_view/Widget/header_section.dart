import 'package:bd_calling_batch2/View/Studen_protal_view/Widget/search_bar.dart';
import 'package:flutter/material.dart';

class HeaderSectionWidget extends StatelessWidget {

  const HeaderSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/cover.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withValues(alpha: 0.30),
              Colors.black.withValues(alpha: 0.55),
            ],
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //app bar
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                actions: [

                  // column

                  Stack(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Positioned(
                        right: 8,
                        top: 3,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: const Text(
                            '1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 12),
                ],
              ),
              const Spacer(),//space

              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome,',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Rahim',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Good to see you again!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 22),

              // Search bar
              Search_bar(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }



}

