

import 'rooms_details.dart';
import 'schedule.dart';
class excutive implements room_details {
  @override
  bool city_View=true;

  @override
  bool mountain_View=true;

  @override
  int price=1500;


static List nonbookeddayes_E1=[];
static List nonbookeddayes_E2=[];





  @override
  String toString() {
    // TODO: implement toString
    return 'The price $price , the city view = $city_View and the mountain view = $mountain_View';
  }

}