import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        shadowColor: Colors.black,
        title: Text(
          'Flutter batch 2',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'My Hobby',
              style: GoogleFonts.roboto(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,

              )
            ),
            SizedBox(height: 5),
            Text(
              'My hobby is learning programming and developing mobile applications. I enjoy learning new technologies, especially Flutter and Dart. In my free time, I practice coding and try to build new projects. Programming helps me improve my creativity and problem-solving skills. I want to become a professional Flutter developer in the future. My hobby gives me joy and motivates me to learn something new every day.',
              style: GoogleFonts.oswald(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 10),
            Image.asset('assets/logo.png', height: 200, width: 200),
            SizedBox(height: 30,),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: Text('Submit my hobby'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
