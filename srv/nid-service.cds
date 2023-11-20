using { novo.nid as my } from '../db/schema';

service NIDService {
    @readonly
    entity Participants as projection on my.Participants;

    @readonly
    entity Presentations as projection on my.Presentations order by startTime asc;

    @readonly
    entity ParticipantToPresentation as projection on my.ParticipantToPresentation;

    @readonly
    entity Referees as projection on my.Referees;

    @readonly
    entity Rooms as projection on my.Rooms;

    //annotate NIDService with @(requires: 'Participant');
}