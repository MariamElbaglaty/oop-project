
import 'rooms_details.dart';
import 'schedule.dart';
class deluxe implements room_details{
   @override
  bool city_View=true;

  @override
  bool mountain_View=true;

  @override
  int price=1200;

static List nonbookeddayes_D1=[];
static List nonbookeddayes_D2=[];







  @override
  String toString() {
    // TODO: implement toString
    return 'The price $price , the city view = $city_View and the mountain view = $mountain_View';
  }
}