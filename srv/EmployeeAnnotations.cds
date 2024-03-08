using { HRMSService } from './hrmsSystem';

annotate HRMSService.Employee with {
    firstName @title: '{i18n>FirstName}';
    lastName @title: '{i18n>LastName}';
    dateOfBirth @title: '{i18n>DateOfBirth}';
    gender @title: '{i18n>Gender}';
    contactNumber @title: '{i18n>ContactNumber}';
    email @title: '{i18n>email}';
    UAN @title: '{i18n>UAN}';
    AAdhar @title: '{i18n>AAdhar}';
    PAN @title: '{i18n>PAN}';
    emergencyContact @title: '{i18n>EmergencyContact}';
    
};

