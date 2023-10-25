<?php

use DNADesign\Elemental\Models\BaseElement;
use SilverStripe\ORM\FieldType\DBField;
use Silverstripe\AssetAdmin\Forms\UploadField;

class ElementHeroImageTextOverlay extends BaseElement
{

    private static $singular_name = 'Hero Image Text Overlay';
    private static $plural_name = 'Hero Image Text Overlays';
    private static $icon = 'font-icon-block-file';
    private static $description = "Displays a large background image with WYSIWYG content and black gradient overlaid";

    private static $db = [
        'Headline'              => 'Varchar(100)',
        'TextContent'           => 'HTMLText'
    ];

    private static $field_labels = [
        'TextContent'           => 'Copy on top of image and gradient'
    ];

    private static $has_one = [
        'Image'                 => 'SilverStripe\Assets\Image'
    ];

    private static $owns = [
        'Image'
    ];

    public function getType()
    {
        return _t(__CLASS__ . '.BlockType', 'Hero Image Text Overlay');
    }

    public function getSummary()
    {
        $longSummary = $this->Headline;
        return DBField::create_field('HTMLText', $longSummary)
            ->Summary(20);
    }

    public function getCMSFields()
    {
        $this->beforeUpdateCMSFields(function ($fields) {
            $fields->addFieldsToTab(
                'Root.Main',
                [
                    UploadField::create('Image')
                ]
            );
        });
        return parent::getCMSFields();
    }

    protected function provideBlockSchema()
    {
        $blockSchema = parent::provideBlockSchema();
        $blockSchema['content'] = $this->getSummary();
        return $blockSchema;
    }
}
