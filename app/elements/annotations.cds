using NIDService as service from '../../srv/nid-service';

annotate service.Participants with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'participantId',
            Value : participantId,
        },
        {
            $Type : 'UI.DataField',
            Label : 'firstName',
            Value : firstName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'lastName',
            Value : lastName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'function',
            Value : function,
        },
        {
            $Type : 'UI.DataField',
            Label : 'email',
            Value : email,
        },
    ]
);
annotate service.Participants with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'participantId',
                Value : participantId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'firstName',
                Value : firstName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'lastName',
                Value : lastName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'function',
                Value : function,
            },
            {
                $Type : 'UI.DataField',
                Label : 'email',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'organisation',
                Value : organisation,
            },
            {
                $Type : 'UI.DataField',
                Label : 'department',
                Value : department,
            },
            {
                $Type : 'UI.DataField',
                Label : 'street',
                Value : street,
            },
            {
                $Type : 'UI.DataField',
                Label : 'number',
                Value : number,
            },
            {
                $Type : 'UI.DataField',
                Label : 'postal',
                Value : postal,
            },
            {
                $Type : 'UI.DataField',
                Label : 'city',
                Value : city,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
