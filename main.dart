
import 'convention_service_manager.dart';
import 'front_desk_employees.dart';
import 'front_office_manager.dart';
import 'general_manager.dart';
import 'guests.dart';
import 'house_keeping_employees.dart';
import 'reservation.dart';
import 'hotel.dart';
import 'room_service_employees.dart';
import 'rooms.dart';
import 'dart:io';
main()
{
  print ('Choose if you are  1) Client      2) Employee      3) Manager');
  int choose=int.parse(stdin.readLineSync()!);
  if (choose==1){
  print('Please choose if you want to : 1) New booking     2) check booking     3) cancel booking');
  int choice1 =int.parse(stdin.readLineSync()!);
Reservation x = Reservation();
x.reserve(choice1);

if (choice1==1){
 Rooms y = Rooms();
 print ('Hope you nice Stay');
}
else if (choice1==2)
{
  print ('Your booking have been checked');
}

else if (choice1==3)
{
  print ('Your booking have been cancelled ');
}



}




else if (choose==2)
{
print('Are you 1) Front desk employee      2) House keeping employee        3) Room service employee');
int choice2 =int.parse(stdin.readLineSync()!);

if (choice2==1)
{
 Front_desk_employees employee1 = Front_desk_employees();
}

else if (choice2==2)

{
House_keeping_employees employee2=House_keeping_employees();
}
else if (choice2==3)

{
  Room_service_employees employee3=Room_service_employees();
}

}
else if (choose==3)
print('Are you 1) Front desk manager      2) convention service manager     3) General manager');
int choice3 =int.parse(stdin.readLineSync()!);

if (choice3==1 )
{
   Front_office_manager manager1=Front_office_manager();
}

else if (choice3==2)
{
Convention_service_manager manager2=Convention_service_manager();
}
else if (choice3==3)
{
 General_manager manager3=General_manager();
}



}
