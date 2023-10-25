<?php

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\ORM\DataExtension;

class ExperienceExtension extends DataExtension
{

    private static $db = [
        'Additional'                  => 'HTMLText'
    ];

    public function updateCMSFields(FieldList $fields)
    {
        $fields->removeFieldsFromTab(
            'Root.Main',
            [
                'Additional'
            ]
        );
        $fields->addFieldsToTab(
            'Root.Additional',
            [
                HTMLEditorField::create(
                    'Additional',
                    'Additional Text'
                )
            ]
        );
        return $fields;
    }

}
