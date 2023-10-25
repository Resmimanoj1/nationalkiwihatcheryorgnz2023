<?php

use SilverStripe\ORM\DataObject;

class RepeaterTile extends DataObject {

    private static $default_sort    = "SortOrder, ID";

    private static $db = [
    	'SortOrder'                 => 'Int',
        'Heading'                   => 'Varchar(100)',
        'Copy'                      => 'HTMLText',
        'LinkURL'                   => 'Varchar(200)',
        'LinkLabel'                 => 'Varchar(200)',
		'ctaURL'                   => 'Varchar(200)',
        'ctaLabel'                 => 'Varchar(200)'
    ];

    private static $has_one = [
        'ElementRepeater'           => 'ElementRepeater',
        'Image'                     => 'SilverStripe\Assets\Image'
    ];

    private static $field_labels = [
        'LinkURL'                   => 'Link'
    ];


    private static $owns = [
        'Image'
    ];

    private static $summary_fields = [
		'Heading'			        => 'Heading'
	];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->removeByName([
            'SortOrder'
        ]);

        return $fields;
    }

    public function getTitle() {
	    return $this->Heading;
	}

}
