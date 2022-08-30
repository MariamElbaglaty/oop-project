

import 'rooms.dart';
class Schedule extends Rooms {

static late List<Schedule> book;
String room_id;
int id;
List dayes;
Schedule(this.id,this.room_id,this.dayes)
{}
static booked(int id){

int guest_id=id;
int k= book.indexWhere((element) => element.id==guest_id);
book.removeAt(k);




 }
}

















