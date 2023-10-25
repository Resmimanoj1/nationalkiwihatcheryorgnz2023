<?php

use DNADesign\Elemental\Models\BaseElement;
use SilverStripe\ORM\FieldType\DBField;

class ElementHeading extends BaseElement
{

    private static $singular_name = 'heading';
    private static $plural_name   = 'heading';
    private static $icon = 'font-icon-block-layout';

    private static $db = [
        'Headline'              => 'Varchar(100)',
        'Subheadline'           => 'Varchar(100)',
		'Introline'           	=> 'Varchar(600)',
		'LinkURL'               => 'Varchar(200)',
        'LinkLabel'             => 'Varchar(200)'
    ];

    private static $field_labels = [
        'LinkURL'                   => 'Link'
    ];

    public function getType()
    {
        return _t(__CLASS__ . '.BlockType', 'Heading');
    }

    public function GetURLSegment() {
        return $this::getPage()->URLSegment;
	}

    public function getSummary()
    {
        $longSummary = $this->Headline;
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
