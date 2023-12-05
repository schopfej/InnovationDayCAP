sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'elements/test/integration/FirstJourney',
		'elements/test/integration/pages/ParticipantsList',
		'elements/test/integration/pages/ParticipantsObjectPage',
		'elements/test/integration/pages/ParticipantToPresentationObjectPage'
    ],
    function(JourneyRunner, opaJourney, ParticipantsList, ParticipantsObjectPage, ParticipantToPresentationObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('elements') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheParticipantsList: ParticipantsList,
					onTheParticipantsObjectPage: ParticipantsObjectPage,
					onTheParticipantToPresentationObjectPage: ParticipantToPresentationObjectPage
                }
            },
            opaJourney.run
        );
    }
);