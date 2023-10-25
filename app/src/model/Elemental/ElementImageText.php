<?php

use DNADesign\Elemental\Models\BaseElement;
use SilverStripe\ORM\FieldType\DBField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\CheckboxField;

class ElementImageText extends BaseElement
{

    private static $singular_name = 'image text';
    private static $plural_name   = 'image text';
    private static $icon = 'font-icon-p-alt-3';

    private static $db = [
        'Heading'               => 'Varchar(100)',
        'Copy'                  => 'HTMLText',
        'LeftAlign'             => 'Boolean'
    ];

    private static $owns = [
        'Image'
    ];

    public function getType()
    {
        return _t(__CLASS__ . '.BlockType', 'Image Text');
    }

    private static $has_one = [
        'Image'                 => 'SilverStripe\Assets\Image'
    ];

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldsToTab(
          'Root.Main',
          [
            TextField::create('Heading'),
            HTMLEditorField::create('Copy'),
            UploadField::create('Image')
              ->setDescription('If no image is selected, then this block becomes a one column block'),
            CheckboxField::create('LeftAlign', 'Make image appear to the left of text')
              ->setDescription('Copy is set to appear under the image on mobile, no matter which alignment')
          ]
        );

        return $fields;
    }

    public function getSummary()
    {
        $longSummary = $this->Heading;
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
