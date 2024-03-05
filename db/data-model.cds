namespace hrms.system;

using {cuid} from '@sap/cds/common';


entity Employee : cuid {
  FirstName        : String(20);
  LastName         : String(20);
  DateOfBirth      : Date;
  Gender           : String enum {
    Male;
    Female;
    Others
  };
  ContactNumber    : String;
  Email            : String;
  UAN              : String;
  AAdhar           : String;
  PAN              : String;
  EmergencyContact : String;
}

entity Department : cuid {
  Department : String;
}

entity Position {
  key Level        : String;
      PositionName : String;

}

entity LeaveRequest : cuid {
  EmployeeID : Association to Employee;
  LeaveType  : String;
  StartDate  : Date;
  EndDate    : Date;
  Status     : String;
}

entity Attendance : cuid {
  EmployeeID   : String;
  Date         : Date;
  ClockInTime  : Time;
  ClockOutTime : Time;
}

entity Payroll : cuid {
  EmployeeID  : String;
  Month       : String;
  Year        : String;
  BasicSalary : Decimal(10, 2);
  Deductions  : Decimal(10, 2);
  NetSalary   : Decimal(10, 2);
}

entity UAN {
  key UANNumber : String;
}

entity Bankdetails : cuid {
  AccountNumber : Integer;
  IIFSCCode     : String;
  BranchName    : String;
  BankName      : String;
}
