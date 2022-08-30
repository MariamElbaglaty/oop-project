
import 'employees.dart';
import 'general_manager.dart';
import 'dart:io';
import 'convention_service_manager.dart';
import 'advance_pay.dart';
import 'employee_info.dart';
import 'work.dart';
class Room_service_employees implements Employees{

employee a=employee(0, '',0, '', '');
Room_service_employees()
{
  {
 
print ('Please, Enter your id');
int id=int.parse(stdin.readLineSync()!);

employee id_old=employee.e.firstWhere((element) => element.id==id,orElse: () =>a);
bool ids=id_old==a;

if (!ids)
{
problem( id );}
else 

print ('Invalid id');

}
}

void problem(int id )
{
  int ID=id;
  print ('What is your problem ?  ');
print ('1) Salary           2) Vacation       3) check the number of the rooms you will work in');
print ('If you want to make a complaint or have any problems please contact with the secretary of the convention service manager ');
int choice = int.parse(stdin.readLineSync()!);

if (choice ==1)
{
  salary(ID);
}
else if (choice==2)
{
vacation(ID);
}
else if (choice==3)
{
room_number(ID);
}

}


void salary(int id)
{
  int employee_id=id;

print ('1) check the time of payment      2) Advance payment ');

int s_request = int.parse(stdin.readLineSync()!);

if (s_request ==1)
{
  print('The time of payment is 26 of the month');

}
else if (s_request==2)
{
  print ('The available advance payment is 400 if you are sure choose true else false ');
String advance_pay= stdin.readLineSync()!;
if (advance_pay=='true')
{
  int money =600;
  Advance_pay.pay.add(Advance_pay(employee_id,money));
}
}
}

  @override
  void vacation(int id) {
    int v_id =id;
  
work x=work.workers.firstWhere((element) => element.id==v_id);
   print ('1) check your main vacation days        2) Take vacation         3) check the number of your reminder vacation dayes');
   int v_request= int.parse(stdin.readLineSync()!);

  if (v_request==1)
  {
   main_vacation_dayes(v_id);

  }

 else if (v_request==2)
{
  taken_vacation_dayes(v_id);
}
else if (v_request==3)
{
  print (x.vacation_days);
  }

  }





  @override
  void main_vacation_dayes(int id) {
    int ID=id;
    work x=work.workers.firstWhere((element) => element.id==ID);

if (x.experience<=5)

{
  print ('You have one vacation day : friday');

}
else if (x.experience>5)
{
  print ('You have two vacation days : friday and saturday');

}
  }


  @override
  void taken_vacation_dayes(int id) {
   int ID=id;
   work x=work.workers.firstWhere((element) => element.id==ID);
int y=x.experience;
int z=x.vacation_days;

if (x.experience<=5)
{
  if (x.vacation_days<3)
  {
    print ('You can take a vacation');
  int k=work.workers.indexWhere((element) => element.id==ID);
    work.workers.removeAt(k);
    work.workers.add(work(ID, y, (z+1)));
  }
  else 
  {
    print ('You can not take a vacation because you took all your vacation dayes ');
  }
}

else if (x.experience>5)
{
if (x.vacation_days<5)
  {
    print ('You can take a vacation');
 int k=work.workers.indexWhere((element) => element.id==ID);
    work.workers.removeAt(k);
    work.workers.add(work(ID, y, (z+1)));
  }
  else 
  {
    print ('You can not take a vacation because you took all your vacation dayes ');
  }

}
}
void room_number (int id )

{
  int ID=id;
  print (Convention_service_manager.rooms[id]);
}
  



  }





