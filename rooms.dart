import 'dart:io';
import 'Excutive.dart';
import 'deluxe.dart';
import 'hotel.dart';
import 'main.dart';
import 'reservation.dart';
import 'rooms_details.dart';
import 'schedule.dart';
import 'standard.dart';

 class Rooms extends Hotel {
 
  Rooms(){
  print ('Choose the type of the room that you want');
  print ('1) Standard room');
  print ('2) Deluxe room');
  print ('3) Excutive room');
 int choose=int.parse(stdin.readLineSync()!);
room_details y;

 if (choose==1){
y=Standard();

print(y);

standard ();

 }

 else if (choose==2)
 {
  y=deluxe();

 print(y);

  Deluxe();

 }

else 
{
  y=excutive();

print(y);

 Excutive();

}
}
 }

standard (){

String roomID;

print(Standard.nonbookeddayes_s1);
print ('Are these dayes alright with you');
String decision=stdin.readLineSync()!;

if(decision=='yes' )
{ print ('Enter the number of dayes');
int ndayes=int.parse(stdin.readLineSync()!);
 List days1=[];

for (int i=0;i<ndayes;i++)
{
print ('Enter the days');
String dayes= stdin.readLineSync()!;
days1.add(dayes);

}
  Standard.nonbookeddayes_s1.remove(days1);
  
  roomID='s1';
  print ('Your room id id $roomID');

  print ('Please , enter your id again to confirm');
  int id =int.parse(stdin.readLineSync()!);

Schedule.book.add(Schedule(id, roomID, days1));
  }
  else if (decision =='no'){

print (Standard.nonbookeddayes_s2);

print ('Enter the number of dayes');
int ndayes=int.parse(stdin.readLineSync()!);
List days2=[];
for (int i=0;i<ndayes;i++)
{
print ('Enter the days');
String dayes= stdin.readLineSync()!;
days2.add(dayes);

}
Standard.nonbookeddayes_s2.remove(days2);

roomID='s2';
  print ('Your room id id $roomID');

   print ('Please , enter your id again to confirm');
  int id =int.parse(stdin.readLineSync()!);

  Schedule.book.add(Schedule(id, roomID, days2));
}
else 
print ('NO available dayes');

}


Deluxe (){

String roomID;


print (deluxe.nonbookeddayes_D1);
print ('Are these dayes alright with you');
String decision=stdin.readLineSync()!;
if(decision=='yes' )
{
  print ('Enter the number of dayes');
int ndayes=int.parse(stdin.readLineSync()!);

  List days3=[];

for (int i=0;i<ndayes;i++)
{
print ('Enter the days');
String dayes= stdin.readLineSync()!;
days3.add(dayes);

}


  deluxe.nonbookeddayes_D1.remove(days3);




  
  roomID='D1';
  print ('Your room id id $roomID');
  print ('Please , enter your id again to confirm');
  int id =int.parse(stdin.readLineSync()!);

  Schedule.book.add(Schedule(id, roomID, days3));
  }

  else if (decision =='no'){
print (deluxe.nonbookeddayes_D2);

  List days4=[];
print ('Enter the number of dayes');
int ndayes=int.parse(stdin.readLineSync()!);
for (int i=0;i<ndayes;i++)
{
print ('Enter the days');
String dayes= stdin.readLineSync()!;
days4.add(dayes);

}


  deluxe.nonbookeddayes_D2.remove(days4);


roomID='D2';
  print ('Your room id id $roomID');

  print ('Please , enter your id again to confirm');
  int id =int.parse(stdin.readLineSync()!);

  Schedule.book.add(Schedule(id, roomID, days4));
}
else 
print ('NO available dayes');







}

Excutive()
{
String roomID;


print (excutive.nonbookeddayes_E1);
print ('Are these dayes alright with you');
String decision=stdin.readLineSync()!;
if(decision=='yes' )
{
  print ('Enter the number of dayes');
int ndayes=int.parse(stdin.readLineSync()!);


  List days5=[];

for (int i=0;i<ndayes;i++)
{
print ('Enter the days');
String dayes= stdin.readLineSync()!;
days5.add(dayes);

}









  excutive.nonbookeddayes_E1.remove(days5);

  roomID='E1';
  print ('Your room id id $roomID');

  print ('Please , enter your id again to confirm');
  int id =int.parse(stdin.readLineSync()!);

  Schedule.book.add(Schedule(id, roomID, days5));
  
  roomID='E1';
  print ('Your room id id $roomID');
  }



  else if (decision =='no'){

print (excutive.nonbookeddayes_E2);
print ('Enter the number of dayes');
int ndayes=int.parse(stdin.readLineSync()!);

  List days6=[];


for (int i=0;i<ndayes;i++)
{
print ('Enter the days');
String dayes= stdin.readLineSync()!;
days6.add(dayes);

}



  excutive.nonbookeddayes_E2.remove(days6);
  

roomID='E2';
  print ('Your room id id $roomID');
 
 print ('Please , enter your id again to confirm');
  int id =int.parse(stdin.readLineSync()!);

  Schedule.book.add(Schedule(id, roomID, days6));
}
else 
print ('NO available dayes');









}





























