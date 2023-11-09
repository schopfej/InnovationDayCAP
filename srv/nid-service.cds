using { novo.nid as my } from '../db/schema';

service NIDService {
    @readonly
    entity Participants as projection on my.Participants;

    @readonly
    entity Presentations as projection on my.Presentations;

    @readonly
    entity Timeslot as projection on my.Timeslot;

    //annotate NIDService with @(requires: 'Participant');
}