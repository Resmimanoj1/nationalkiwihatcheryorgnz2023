<?php

use DNADesign\Elemental\Models\BaseElement;
use SilverStripe\ORM\FieldType\DBField;

class ElementVideo extends BaseElement
{
	private static $singular_name = 'add video (retired)';
    private static $plural_name   = 'add video (retired)';
    private static $icon = 'font-icon-p-alt-3';

    private static $db = [
		'VideoID'				=> 'Varchar(500)',
        'VidCircleLineOne'      => 'Varchar(100)',
		'VidCircleLineTwo'      => 'Varchar(100)',
        'CTALink'               => 'Varchar(200)'
    ];

	public function getType()
    {
        return _t(__CLASS__ . '.BlockType', 'Add Video (retired)');
    }

    public function getSummary()
    {
        return 'This block is retired. Please replace.';
    }

    protected function provideBlockSchema()
    {
        $blockSchema = parent::provideBlockSchema();
        $blockSchema['content'] = $this->getSummary();
        return $blockSchema;
    }

}
