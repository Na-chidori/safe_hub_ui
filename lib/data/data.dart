import 'dart:math';
import 'package:safe_hub_ui/models/date_model.dart';
import 'package:safe_hub_ui/models/event_type_model.dart';
import 'package:safe_hub_ui/models/events_model.dart';

List<DateModel> getDates(){

  List<DateModel> dates = [
    new DateModel(date:'10' ,weekDay:'Sun' ),
    new DateModel(date:'11' ,weekDay:'Mon' ),
    new DateModel(date:'12' ,weekDay:'Tue' ),
    new DateModel(date:'13' ,weekDay:'Wed' ),
    new DateModel(date:'14' ,weekDay:'Thurs' ),
    new DateModel(date:'15' ,weekDay:'Fri' ),
    new DateModel(date:'16' ,weekDay:'Sat' ),
  ];
  return dates;

}

List<EventTypeModel> getEventTypes(){

  List<EventTypeModel> events = [
    new EventTypeModel(imgAssetPath:"assets/concert.png",eventType:"Panel Discussions"),
    new EventTypeModel(imgAssetPath:"assets/sports.png",eventType:"Game Nights"),
    new EventTypeModel(imgAssetPath:"assets/education.png",eventType: "Education"),
  ];
  return events;
}

List<EventsModel> getEvents(){

  List<EventsModel> events = [
    new EventsModel(imgeAssetPath:"assets/events/ryla.jpg",date:"Sunday, Jan 14, 2024",desc:"RYLA ቅምሻ",address:"Free for all"),
    new EventsModel(imgeAssetPath:"assets/second.png",date:"Friday,Jan 12, 2024",desc:"Art & Meet in Bole Brass",address:"200 birr Entrance"),
    new EventsModel(imgeAssetPath:"assets/events/leadership.jpg",date:"Saturday, January 13, 2024",desc:"Becoming a Leader",address:"Members ONLY!"),
  ];
  return events;


}