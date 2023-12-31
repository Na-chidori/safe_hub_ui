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
    new EventTypeModel(imgAssetPath:"assets/concert.png",eventType:"Concert"),
    new EventTypeModel(imgAssetPath:"assets/sports.png",eventType:"Sports"),
    new EventTypeModel(imgAssetPath:"assets/education.png",eventType: "Education"),
  ];
  return events;
}

List<EventsModel> getEvents(){

  List<EventsModel> events = [
    new EventsModel(imgeAssetPath:"assets/tileimg.png",date:"Jan 12, 2019",desc:"Sports Meet in Galaxy Field",address:"Greenfields, Sector 42, Faridabad"),
    new EventsModel(imgeAssetPath:"assets/second.png",date:"Jan 12, 2019",desc:"Art & Meet in Street Plaza",address:"Galaxyfields, Sector 22, Faridabad"),
    new EventsModel(imgeAssetPath:"assets/music_event.png",date:"Jan 12, 2019",desc:"Galaxyfields, Sector 22, Faridabad",address:"Youth Music in Gwalior"),
  ];
  return events;


}