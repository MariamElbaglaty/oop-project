import 'dart:io';

import 'advance_pay.dart';
import 'employee_info.dart';
import 'salary.dart';
import 'work.dart';
class General_manager{


static List <Salary> pay=[];

employee z=employee(0, '',0, '', '');
//static late List<General_manager> pay;

General_manager()
{
   print ('Please, Enter your id');
int id=int.parse(stdin.readLineSync()!);

employee id_old=employee.e.firstWhere((element) => element.id==id,orElse: () => z);
bool ids=id_old==z;

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
print ('1) check on a certain employees   2) check on the salary and money    3) Add new employee ');

int choice = int.parse(stdin.readLineSync()!);

if (choice==1)

{
  employees_specific();
}


else if (choice==2)
{
  E_salary();
}

else if (choice==3)
{
  E_salary();
}




}


void employees_specific()
{
  print ('Enter the id of the employee you want to check');

  int E_id=int.parse(stdin.readLineSync()!);

 print (employee.e.firstWhere((element) => element.id==E_id));
 print(work.workers.firstWhere((element) => element.id==E_id));

}

void E_salary()
{
print ('Do you want to 1) Edit the salary of employees    2) See who asked for advace pay');
int decision= int.parse(stdin.readLineSync()!);

if (decision==1)
{
  print ('Enter the id of the employee you want to change his salary');

  int E_id=int.parse(stdin.readLineSync()!);

print ('Enter the new salary');
int new_salary=int.parse(stdin.readLineSync()!);

   pay.add(Salary(E_id,new_salary ));
}


else if (decision==2)
{
  print (Advance_pay.pay);
}

}


void add_employee()
{
 print ('Enter the id of the new employee');

 int E_id=int.parse(stdin.readLineSync()!);

print('Enter his name ');

String name = stdin.readLineSync()!;

print('Enter his phone number');

int number=int.parse(stdin.readLineSync()!);

print ('Enter his email');

String email = stdin.readLineSync()!;

print('Enter his address');

String address = stdin.readLineSync()!;

employee.e.add(employee(E_id, name, number, email, address));

}







}











