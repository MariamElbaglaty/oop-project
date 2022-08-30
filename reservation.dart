import 'dart:html';
import 'dart:io';
import 'current_guests.dart';
import 'guests.dart';
import 'hotel.dart';
import 'main.dart';
import 'old_guests.dart';
import 'palindromic.dart';
import 'schedule.dart';
import 'rooms.dart';
class Reservation  {
  
static List <Current_guests>info1  =[];
static List <Old_guests>info2  =[];
static Current_guests y=Current_guests(0, 0, '', '', '');
static Old_guests z=Old_guests(0, 0, '', '', '');
void reserve (int choice ){
if (  choice==1  )
{
  new_booking();
}

else if (choice==2)
{

  check_boking();

}
else if (choice==3)
{
print('Please,Enter your id');
int id =int.parse(stdin.readLineSync()!);

cancel_reservation(id);
  
}
}
void  new_booking( )
{

 print('Please,Enter your id');
int id =int.parse(stdin.readLineSync()!);

Old_guests id_old=info2.firstWhere((element) => element.id==id,orElse: () => z );
bool ids=id_old==y;
if ( !ids )
{
print('Your data ${id_old}');}

else {
  print('Please,Enter your phone number');
  int phone =int.parse(stdin.readLineSync()!);

print('Please,Enter your first name');
 String F_name=stdin.readLineSync()!;

 print('Please,Enter your last name');
 String L_name=stdin.readLineSync()!;

print('Please,Enter your email');
String email=stdin.readLineSync()!;

info1.add(Current_guests(id, phone, F_name, L_name, email));
info2.add(Old_guests(id, phone, F_name,L_name, email));

 
}


}

void check_boking()
{
  print('Please,Enter your id');
int id =int.parse(stdin.readLineSync()!);
  int guest_id=id;

Current_guests Current_id=info1.firstWhere((element) => element.id==guest_id,orElse: () => y);
bool ids=Current_id==y;

if (ids)
 print ('your data are ${Current_id}');
 
  
  else{
print ('Invalid id');
check_boking();
   }
}


void cancel_reservation(int id)
{

int guest_id=id;

int k= info1.indexWhere((element) => element.id==guest_id);
info1.removeAt(k);


print('Please,Enter your room id');
String room_id =stdin.readLineSync()!;
Schedule.booked(guest_id);

 
}

}










































