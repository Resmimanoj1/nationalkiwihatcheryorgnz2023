<?php

use DNADesign\Elemental\Models\BaseElement;
use NgaiTahuTourism\Experiences\Model\Experience;
use NgaiTahuTourism\FAQ\Model\FAQCategory;
use SilverStripe\Forms\DropdownField;
use SilverStripe\ORM\FieldType\DBField;
use SilverStripe\Forms\TextField;

class ElementExperienceDetail extends BaseElement
{

    private static $singular_name = 'experience detail';
    private static $plural_name   = 'experience detail';
    private static $icon = 'font-icon-p-article';

    private static $has_one = [
        'Experience'            => Experience::class,
        'ExperienceAuxiliary'   => Experience::class
    ];

    private static $db = [
        'PricingExperience'             => 'Varchar(100)',
        'PricingExperienceAuxiliary'    => 'Varchar(100)',
        'BookingLinkLabel'		        => 'Varchar(100)',
        'BookingLink'			        => 'Varchar(500)',
        'BookingLinkAuxiliaryLabel'     => 'Varchar(100)',
        'BookingLinkAuxiliary'	        => 'Varchar(500)'
    ];

    public function getType()
    {
        return _t(__CLASS__ . '.BlockType', 'Experience Detail');
    }

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldsToTab(
            'Root.Main',
            [
                TextField::create('PricingExperience')
                ->setDescription('Set title for pricing'),
                DropdownField::create('ExperienceID', 'Experience', Experience::get()->map('ID', 'Name'))
                ->setEmptyString('Select...'),
                TextField::create('BookingLinkLabel')
                ->setDescription('Text on the button for the first experience'),
                TextField::create('BookingLink')
                ->setDescription('Add where the button links to for the first experience'),

                TextField::create('PricingExperienceAuxiliary')
                ->setDescription('Set title for a secondary / auxiliary set of pricing'),
                DropdownField::create('ExperienceAuxiliaryID', 'Auxiliary Experience', Experience::get()->map('ID', 'Name'))
                ->setEmptyString('Select...')
                ->setDescription('The Auxiliary Experience will show the pricing for a second experience'),
                TextField::create('BookingLinkAuxiliaryLabel')
                ->setDescription('Text on the button for the second experience'),
                TextField::create('BookingLinkAuxiliary')
                ->setDescription('Add where the button links to for the second experience')
            ]
          );

        return $fields;
    }

    public function getSummary()
    {
        $longSummary = $this->Experience->Name;
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
