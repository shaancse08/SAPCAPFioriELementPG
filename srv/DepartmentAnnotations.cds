using {HRMSService} from './hrmsSystem';

annotate HRMSService.Department with {
    department  @title: '{i18n>Department}';
    description @title: '{i18n>Description}';
};


annotate HRMSService.Department with {
    department  @readonly;
    description @readonly;
};
