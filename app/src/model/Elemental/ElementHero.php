<?php

use DNADesign\Elemental\Models\BaseElement;
use SilverStripe\ORM\FieldType\DBField;

class ElementHero extends BaseElement
{

    private static $singular_name = 'hero';
    private static $plural_name   = 'hero';
    private static $icon = 'font-icon-block-file';

    private static $db = [
        'Headline'              => 'Varchar(100)',
        'Subheadline'           => 'Varchar(500)',
		'Introline'           	=> 'Varchar(600)',
		'LinkURL'               => 'Varchar(200)',
        'LinkLabel'             => 'Varchar(200)',
    ];

    private static $has_one = [
        'Image'                => 'SilverStripe\Assets\Image'
    ];

    private static $owns = [
        'Image'
    ];

    private static $field_labels = [
        'LinkLabel2'                => 'Link label line 2',
        'LinkURL'                   => 'Link'
    ];

    public function getType()
    {
        return _t(__CLASS__ . '.BlockType', 'Hero');
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
