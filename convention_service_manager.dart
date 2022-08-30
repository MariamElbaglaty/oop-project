
import 'advance_pay.dart';
import 'general_manager.dart';
import 'dart:io';
import 'employee_info.dart';
import 'work.dart';
class Convention_service_manager extends General_manager{

employee c=employee(0, '',0, '', '');

static Map rooms=Map();
Convention_service_manager()
{
   print ('Please, Enter your id');
int id=int.parse(stdin.readLineSync()!);

employee id_old=employee.e.firstWhere((element) => element.id==id,orElse: () =>c);
bool ids=id_old==c;

if (!ids)
{
problem( id );}
else 
print ('Invalid id');

}

void problem(int id )
{
  int ID=id;
  print ('What is your problem ?  ');
print ('1) Salary     2) Vacation    3) check on a certain employee   4) Edit the rooms of employees ');
print ('If you want to make a complaint or have any problems please contact with the secretary of the general manager ');
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
 service_employees_specific();
}
}
void salary (int id)
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
  print ('The available advance payment is 700 if you are sure choose true else false ');
String advance_pay= stdin.readLineSync()!;
if (advance_pay=='true')
{
  int money=700;
  Advance_pay.pay.add(Advance_pay( employee_id, money));
}
}
}

void vacation (int id )
{
  int v_id =id;
  work x=work.workers.firstWhere((element) => element.id==v_id);

   print ('1) check your remaining vacation days        2) Take vacation ');
   int v_request= int.parse(stdin.readLineSync()!);

  if (v_request==1)
  {
 print (x.vacation_days);

  }

 else if (v_request==2)
{

}
}
void taken_vacation_dayes(int id)

{
int ID=id;
work x=work.workers.firstWhere((element) => element.id==ID);
int y=x.experience;
int z=x.vacation_days;
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





void service_employees_specific()
{
 print ('Please, Enter the id of the employee that you want to check about him');
 
 int s_id =int.parse(stdin.readLineSync()!);
 print (employee.e.firstWhere((element) => element.id==s_id));
 print(work.workers.firstWhere((element) => element.id==s_id));

 print(Advance_pay.pay.firstWhere((element) => element.id==s_id));
 
 
 
 
 
 }





























}