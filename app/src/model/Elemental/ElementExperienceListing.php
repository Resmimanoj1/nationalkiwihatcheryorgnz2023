<?php

use DNADesign\Elemental\Models\BaseElement;
use NgaiTahuTourism\Experiences\Model\Experience;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\CheckboxSetField;
use SilverStripe\Forms\FieldGroup;
use SilverStripe\Forms\HeaderField;
use SilverStripe\Forms\LiteralField;
use SilverStripe\ORM\ArrayList;
use SilverStripe\ORM\FieldType\DBField;

class ElementExperienceListing extends BaseElement
{

    private static $singular_name = 'experience listing';
    private static $plural_name   = 'experience listing';
    private static $icon = 'font-icon-p-articles';

    private static $db = [
        'IconAdult'                 => 'Boolean',
        'IconChild'                 => 'Boolean',
        'IconTime'                  => 'Boolean',
        'IconLanding'               => 'Boolean'
    ];

    private static $defaults = [
        'IconAdult'                 => true,
        'IconChild'                 => true,
        'IconTime'                  => true,
        'IconLanding'               => true,
    ];

    private static $many_many = [
		'Experiences'		=> Experience::class
	];

    public function getType()
    {
        return _t(__CLASS__ . '.BlockType', 'Experience Listing');
    }

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->removeByName([
          'IconAdult',
          'IconChild',
          'IconTime',
          'IconLanding'
        ]);

        $fields->addFieldsToTab(
            'Root.Main',
            [
                CheckboxSetField::create(
    				'Experiences',
    				'Experiences',
    				Experience::get()->map('ID','Name')
    			),
                LiteralField::create(
                    'KeyNote',
                    '<small>To remove some icons from the key, select "Key" from the actions menu (&#8943;) at right.</small>'
                )
            ]
        );

        $fields->addFieldsToTab(
            'Root.Key',
            [
                HeaderField::create(
                    'Key',
                    'Key'
                ),
                FieldGroup::create(
                    CheckboxField::create(
                        'IconAdult',
                        'Adult'
                    ),
                    CheckboxField::create(
                        'IconChild',
                        'Child'
                    ),
                    CheckboxField::create(
                        'IconTime',
                        'Time away'
                    ),
                    CheckboxField::create(
                        'IconLanding',
                        'Landings'
                    )
                )
            ]
        );

        return $fields;
    }

    public function getSummary()
    {
        $numExperiences = $this->Experiences()->Count();
        if ($numExperiences == 0) {
            $longSummary = 'No experiences';
        } else if ($numExperiences == 1) {
            $longSummary = '1 experience';
        } else $longSummary = $numExperiences . ' experiences';
        return DBField::create_field('HTMLText', $longSummary)
            ->Summary(20);
    }

    protected function provideBlockSchema()
    {
        $blockSchema = parent::provideBlockSchema();
        $blockSchema['content'] = $this->getSummary();
        return $blockSchema;
    }

}
