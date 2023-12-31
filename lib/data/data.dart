import 'package:safe_hub_ui/models/date_model.dart';
import 'package:safe_hub_ui/models/event_type_model.dart';
import 'package:safe_hub_ui/models/events_model.dart';

List<DateModel> getDates() {
  List<DateModel> dates = [
    DateModel(date: '10', weekDay: 'Sun'),
    DateModel(date: '11', weekDay: 'Mon'),
    DateModel(date: '12', weekDay: 'Tue'),
    DateModel(date: '13', weekDay: 'Wed'),
    DateModel(date: '14', weekDay: 'Thurs'),
    DateModel(date: '15', weekDay: 'Fri'),
    DateModel(date: '16', weekDay: 'Sat'),
  ];
  return dates;
}

List<EventTypeModel> getEventTypes() {
  List<EventTypeModel> events = [
    EventTypeModel(imgAssetPath: "assets/concert.png", eventType: "Concert"),
    EventTypeModel(imgAssetPath: "assets/sports.png", eventType: "Sports"),
    EventTypeModel(
        imgAssetPath: "assets/education.png", eventType: "Education"),
  ];
  return events;
}

List<EventsModel> getEvents() {
  List<EventsModel> events = [
    EventsModel(
        imgeAssetPath: "assets/tileimg.png",
        date: "Jan 12, 2019",
        desc: "Sports Meet in Galaxy Field",
        address: "Greenfields, Sector 42, Faridabad"),
    EventsModel(
        imgeAssetPath: "assets/second.png",
        date: "Jan 12, 2019",
        desc: "Art & Meet in Street Plaza",
        address: "Galaxyfields, Sector 22, Faridabad"),
    EventsModel(
        imgeAssetPath: "assets/music_event.png",
        date: "Jan 12, 2019",
        desc: "Galaxyfields, Sector 22, Faridabad",
        address: "Youth Music in Gwalior"),
  ];
  return events;
}
