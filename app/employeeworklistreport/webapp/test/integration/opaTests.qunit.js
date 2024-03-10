sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/app/employeeworklistreport/test/integration/FirstJourney',
		'com/app/employeeworklistreport/test/integration/pages/EmployeeList',
		'com/app/employeeworklistreport/test/integration/pages/EmployeeObjectPage',
		'com/app/employeeworklistreport/test/integration/pages/AddressObjectPage'
    ],
    function(JourneyRunner, opaJourney, EmployeeList, EmployeeObjectPage, AddressObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/app/employeeworklistreport') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEmployeeList: EmployeeList,
					onTheEmployeeObjectPage: EmployeeObjectPage,
					onTheAddressObjectPage: AddressObjectPage
                }
            },
            opaJourney.run
        );
    }
);