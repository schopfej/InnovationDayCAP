namespace novo.nid;

using
{
    cuid,
    managed,
    sap.common.CodeList
}
from '@sap/cds/common';

entity Presentations
{
    key presentationId : UUID;
    timeslot : String;
    presentationDesc : String;
    participants : Composition of many ParticipantToPresentation on participants.presentation = $self;
}

entity Participants
{
    key participantId : UUID;
    firstName : String;
    lastName : String;
    function : String;
    email : String;
    organisation : String;
    department : String;
    street : String;
    number : String;
    postal : String;
    city : String;
    presentations : Composition of many ParticipantToPresentation on presentations.participant = $self;
}

entity ParticipantToPresentation 
{
    key participant : Association to one Participants;
    key presentation : Association to one Presentations;
}

entity Timeslot 
{
    key timeslotId : String;
    timeslotDesc : String;
}
