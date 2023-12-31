import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  List videoList=[
    "Project Management Fundamentals: An Introduction",
    "Getting Started with Project Management",
    "Overview of Project Management Concepts",
    "Introduction to the Project Life Cycle",
    "Key Terms in Project Management Explained",
    "Why Project Management Matters",
    "Roles and Responsibilities in Project Management",
    "The Importance of Project Charters",
    "Understanding Project Objectives and Scope",
    "Basics of Project Planning",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context,index){
        return ListTile(
          leading: Container(
            padding:EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index==0 ?Color(0xFF674AEF) : Color(0xFF674AEF).withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.play_arrow_rounded,
            color:Colors.white, size :30),
          ),
          title: Text(videoList[index]),
          subtitle: Text("20 min 50 sec"),
        );
      },
    );
  }
}
