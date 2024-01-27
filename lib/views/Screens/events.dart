import 'package:flutter/material.dart';
import 'package:safe_hub_ui/data/data.dart';
import 'package:safe_hub_ui/models/date_model.dart';
import 'package:safe_hub_ui/models/event_type_model.dart';
import 'package:safe_hub_ui/models/events_model.dart';

class EventScreen extends StatefulWidget {
  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  List<DateModel> dates = [];
  List<EventTypeModel> eventsType = [];
  List<EventsModel> events = [];

  String todayDateIs = "12";

  @override
  void initState() {
    super.initState();
    dates = getDates();
    eventsType = getEventTypes();
    events = getEvents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF102733), Color(0xFF0D1C2D)],
          ),
        ),
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 60, horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Hello!",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 21,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              "Let's explore what’s happening in our Hub",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: Color(0xFFFAE072),
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),

                    /// Dates
                    Container(
                      height: 60,
                      child: ListView.builder(
                        itemCount: dates.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return DateTile(
                            weekDay: dates[index].weekDay,
                            date: dates[index].date,
                            isSelected: todayDateIs == dates[index].date,
                          );
                        },
                      ),
                    ),

                    /// Events
                    SizedBox(height: 16),
                    Text(
                      "All Events",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      height: 100,
                      child: ListView.builder(
                        itemCount: eventsType.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return EventTile(
                            imgAssetPath: eventsType[index].imgAssetPath,
                            eventType: eventsType[index].eventType,
                          );
                        },
                      ),
                    ),

                    /// Popular Events
                    SizedBox(height: 16),
                    Text(
                      "Popular Events",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      child: ListView.builder(
                        itemCount: events.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return PopularEventTile(
                            desc: events[index].desc,
                            imgeAssetPath: events[index].imgeAssetPath,
                            date: events[index].date,
                            address: events[index].address,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DateTile extends StatelessWidget {
  final String weekDay;
  final String date;
  final bool isSelected;

  DateTile({required this.weekDay, required this.date, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xffFCCD00) : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            date,
            style: TextStyle(
              color: isSelected ? Colors.black : Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),
          Text(
            weekDay,
            style: TextStyle(
              color: isSelected ? Colors.black : Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class EventTile extends StatelessWidget {
  final String imgAssetPath;
  final String eventType;

  EventTile({required this.imgAssetPath, required this.eventType});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 30),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Color(0xff29404E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            imgAssetPath,
            height: 27,
          ),
          SizedBox(height: 12),
          Text(
            eventType,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class PopularEventTile extends StatelessWidget {
  final String desc;
  final String date;
  final String address;
  final String imgeAssetPath;

  PopularEventTile(
      {required this.address,
        required this.date,
        required this.imgeAssetPath,
        required this.desc});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 100,
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Color(0xff29404E),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 16),
              width: MediaQuery.of(context).size.width - 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    desc,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: <Widget>[
                      Image.asset("assets/calender.png", height: 12),
                      SizedBox(width: 8),
                      Text(
                        date,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: <Widget>[
                      Image.asset("assets/location.png", height: 12),
                      SizedBox(width: 8),
                      Text(
                        address,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ClipRRect(
            borderRadius:
            BorderRadius.only(topRight: Radius.circular(8), bottomRight: Radius.circular(8)),
            child: Image.asset(
              imgeAssetPath,
              height: 100,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
