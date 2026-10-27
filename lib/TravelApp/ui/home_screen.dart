import 'package:bd_calling_batch2/TravelApp/widget/category_section.dart';
import 'package:bd_calling_batch2/TravelApp/widget/search_bar.dart';
import 'package:flutter/material.dart';

import '../utls/destinations_card_data.dart';
import '../widget/destinations_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String name = "/home-screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Explore Bangladesh',
          style: TextStyle(
            color: Colors.green.shade900,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.location_on_outlined, color: Colors.green),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.black54,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Where to next?',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green.shade900,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Find your perfect Getaway',
                style: TextStyle(fontSize: 16, color: Colors.green.shade900),
              ),
              SizedBox(height: 10),
              Searchbar(),
              SizedBox(height: 10),
              CategorySection(),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular destinations',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade900,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.lightGreen.shade900,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: destinations.length,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: DestinationsCard(destination: destinations[index]),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Explore more',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade900,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.lightGreen.shade900,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: destinations.length,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: DestinationsCard(destination: destinations[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
