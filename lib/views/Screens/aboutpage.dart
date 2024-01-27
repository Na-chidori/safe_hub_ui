import 'package:flutter/material.dart';

class LeadershipAcademyPage extends StatelessWidget {
  const LeadershipAcademyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/background_image.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // Transparent Foreground with Text
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.5),  // Adjust the opacity as needed
              child: Center(
                child: Text(
                  'Cohort 2 Will Commence soon',
                  style: TextStyle(
                    color: Colors.orangeAccent[200],
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ),
            ),
          ),
        ],
      ),
    );
  }
}

