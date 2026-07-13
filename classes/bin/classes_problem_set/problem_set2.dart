

/*
     Project: Employee Task Management System

    building a mini system for a company to track employees and their work items — the kind of thing that could plausibly be a tiny slice of a real internal tool.

*/

void main(List<String> args) {

    List<Employee> companyRoster = [
        FullTimeEmployee(
            name: 'Jan 3rd Bitoon', 
            id: 'M-005118', 
            annualSalary: 5000000
        ),
        Contractor(
            name: 'Jeb Biton', 
            id: 'M-005119', 
            hourlyRate: 1000, 
            hoursLogged: 342
        ),
        Intern(
            name: 'Jera Bitoon', 
            id: 'M-005119', 
            stipend: 15000, 
            mentor: 'Jan 3rd Bitoon'
        )
    ];

    final indirectAproach = Employee.hire('FullTime', 'John Doe', 'M-0005120');

    companyRoster.add(indirectAproach);

    for (final emp in companyRoster) {
        emp.dispalyProfile();
        print('Salary: ${formatCurrency(emp.calculateMonthlyPay())}');
        print(emp.payGrade);
        print('----------------');
    }
    print('Total Employees: ${Employee.totalEmployee}');
}
/*
dont mind this
    enum Role {
        fullTime,
        contractor,
        intern
    }
*/

abstract class Employee {
    final String name;
    final String id;

    static int totalEmployee = 0;

    Employee({
        required this.name, 
        required this.id
    }) {
        totalEmployee++;
    }

    factory Employee.hire(
        String role, 
        String name, 
        String id
    ) {
        if (role == 'FullTime') {
            return FullTimeEmployee(
                name: name, 
                id: id, 
                annualSalary: 0
            );
        } else if (role == 'Contractor') {
            return Contractor(
                name: name, 
                id: id, 
                hourlyRate: 0, 
                hoursLogged: 0
            );
        } else if (role == 'Intern') {
            return Intern(
                name: name, 
                id: id, 
                stipend: 0, 
                mentor: ''
            );
        } else {
            throw ArgumentError('Invalid action');
        }
    }

    String get payGrade {
        if (calculateMonthlyPay() >= 100000) {
            return 'Role: Senior Developer';
        } else {
            return 'Role: Junior Developer';
        }
    }

    int calculateMonthlyPay();

    void dispalyProfile() {
        print('Name: $name, - $id');
    }
}

class FullTimeEmployee extends Employee {

    final int annualSalary;

    FullTimeEmployee({
        required super.name, 
        required super.id, 
        required this.annualSalary
    });


    @override
    int calculateMonthlyPay() {
        return (annualSalary / 12).toInt(); 
    }
}

class Contractor extends Employee {

    final int hourlyRate;
    final int hoursLogged;

    Contractor({
        required super.name, 
        required super.id, 
        required this.hourlyRate, 
        required this.hoursLogged
    });

    Contractor.partTime({
        required super.name,
        required super.id,
        required this.hourlyRate,
    }) : hoursLogged = 20;

    @override
    int calculateMonthlyPay() {
        return hourlyRate * hoursLogged;
    }

}

class Intern extends Employee {

    final int stipend;
    String _mentor;

    Intern({
        required super.name, 
        required super.id, 
        required this.stipend,
        required this._mentor
    });
    
    String get mentor => _mentor;

    set mentor(String newmentor) {
        if (_mentor.isEmpty) {
          _mentor = newmentor;
        } else {
          throw ArgumentError('Already has mentor');
        }
    }

    
    @override
    int calculateMonthlyPay() {
        return stipend;
    }

    @override
    void dispalyProfile() {
        print('Name: $name, - $id');
    }
}

String formatCurrency(int amount) {
  return amount.toString().replaceAllMapped(
    RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
    (match) => '${match[1]},',
  );
}