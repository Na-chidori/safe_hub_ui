import 'package:flutter/material.dart';
import 'package:safe_hub_ui/views/Screens/detailscreen.dart';

class LeadershipAcademyPage extends StatefulWidget {
  const LeadershipAcademyPage({Key? key}) : super(key: key);

  @override
  State<LeadershipAcademyPage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<LeadershipAcademyPage> {
  double screenWidth = 0;
  double screenHeight = 0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.brown[50] ?? Colors.orange, Colors.orange[100] ?? Colors.orange ],
    ),
    ),
      child:SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth / 20,
          ),
          child: Column(
            children: [
              Container(
                color: Colors.black26,
                width: screenWidth,
                height: 1,
                margin: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
              ),
              item("background_image.jpg", "Weekend class", "This class is tailored to accommodate both highschool and college students.", "High school and campus life often come with demanding schedules filled with classes, assignments, and various extracurricular activities. The Weekend Class addresses this challenge head-on by offering a flexible alternative to traditional weekday classes. This flexibility allows students to engage in enriching learning experiences without sacrificing their weekday commitments, striking a balance between academic pursuits and personal development."),
              item("background_image.jpg", "Master Class", "This class is designed for post-graduate students and focuses on leadership skills.", "The Master Class is not merely an extension of postgraduate studies; it is a transformative experience that goes beyond academic rigors. This specialized class is meticulously crafted to immerse post-graduate students in a comprehensive curriculum that encompasses advanced coursework, practical application, and a deep exploration of leadership dynamics. It serves as a platform where theoretical knowledge converges with real-world challenges, preparing students for leadership roles across various industries."),
              item("background_image.jpg", "Regular Class", "This class targets young individuals with a clear schedule", "Young individuals often find themselves caught in the whirlwind of professional responsibilities, leaving limited time for educational pursuits. The Regular Class recognizes this challenge and serves as a lifeline, providing a structured learning environment that accommodates the demanding schedules of the modern workforce. By offering classes on working days, it becomes a catalyst for continued personal and professional development.The curriculum of the Regular Class is strategically crafted to align with the needs of working individuals."),
            ],
          ),
        ),
      ),
      ),
    );
  }

  Widget item(String asset, String title, String desc, String fullDesc) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              asset: asset,
              tag: title,
              fullDesc: fullDesc,
            ),
          ),
        );
      },
      child: Container(
        height: screenWidth / 2.5,
        width: screenWidth,
        margin: EdgeInsets.only(
          bottom: screenWidth / 20,
        ),
        child: Row(
          children: [
            Hero(
              tag: title,
              child: Container(
                width: screenWidth / 2.8,
                height: screenWidth / 2.8,
                margin: EdgeInsets.only(
                  right: screenWidth / 20,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/$asset",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.black87,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        desc,
                        style: const TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.black87,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add your registration logic here
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      onPrimary: Color(0xff4e342e),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(color: Color(0xff4e342e)),
                      ),
                    ),
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xff4e342e),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }

}