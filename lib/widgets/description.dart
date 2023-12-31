import 'package:flutter/material.dart';
class DescriptionSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:20),
      child:Column(
        children: [
          Text(
            "Embark on a comprehensive journey into the dynamic field of project management with our 'Introduction to Project Management' course. Whether you are a seasoned professional seeking to enhance your skills or someone eager to dive into the world of project management, this course provides a solid foundation for effective project leadership.This course is delivered through a combination of video lectures, interactive assignments, and practical case studies. Participants will have the opportunity to apply their knowledge in real-world scenarios, fostering a hands-on learning experience.",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.7),
            ),
            textAlign:TextAlign.justify,
          ),
          SizedBox(height:20),
          Row(
            children: [
              SizedBox(width: 5),
              Text(
                "Course Length",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.timer,
                color:Colors.orangeAccent[200],
              ),
              SizedBox(width: 5),
              Text(
                "2 hours",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Rating",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.star,
                color:Colors.orangeAccent[200],
              ),
              SizedBox(width: 5),
              Text(
                "5",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
