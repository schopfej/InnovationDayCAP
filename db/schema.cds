namespace novo.nid;

using {
    cuid,
    managed,
    sap.common.CodeList
} from '@sap/cds/common';

entity Presentations {
    key presentationId   : UUID;
        timeslot         : String;
        presentationDesc : String;
        referee          : Association to Referees;
        room             : Association to Rooms;
        participants     : Composition of many ParticipantToPresentation
                               on participants.presentation = $self;
}

entity Participants {
    key participantId : String;
        firstName     : String;
        lastName      : String;
        function      : String;
        email         : String;
        organisation  : String;
        department    : String;
        street        : String;
        number        : String;
        postal        : String;
        city          : String;
        presentations : Composition of many ParticipantToPresentation
                            on presentations.participant = $self;
}

entity Referees {
    key refereeId     : String;
        name          : String;
        bio           : String;
        image         : LargeBinary @Core.MediaType: 'image/png';
        Presentations : Association to many Presentations
                            on Presentations.referee = $self;
}

entity Rooms {
    key roomId        : String;
        name          : String;
        description   : String;
        location      : String;
        Presentations : Association to many Presentations
                            on Presentations.room = $self;
}

entity ParticipantToPresentation {
    key participant  : Association to one Participants;
    key presentation : Association to one Presentations;
}
