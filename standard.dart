



import 'hotel.dart';
import 'rooms_details.dart';
import 'schedule.dart';

class Standard implements room_details{

 @override
  bool city_View=true;

  @override
  bool mountain_View=false;

  @override
  int price=1000;
  
  late String room_id;
static List nonbookeddayes_s1=[];

static List nonbookeddayes_s2=[];
  
 


@override
  String toString() {
    // TODO: implement toString
    return 'The price $price , the city view = $city_View and the mountain view = $mountain_View';
  }
  


 









}