using {HRMSService} from './hrmsSystem';

annotate HRMSService.Position with {
    level        @title: '{i18n>Level}';
    positionName @title: '{i18n>PositionName}';
};

annotate HRMSService.Position with {
    level        @readonly;
    positionName @readonly;
};
